<?php

namespace App\Http\Controllers\Admin;

use DB;
use Excel;
use App\Model\ProfessorData;
use Illuminate\Http\Request;
use App\Http\Controllers\Controller;

class AdminController extends Controller
{
	public function __construct()
	{
		$this->middleware('auth');
	}
	public function index()
	{
		$professor_data = ProfessorData::all();
		return view('admin.dashboard',compact('professor_data'));
	}
	public function import_excel(Request $request)
	{
		$this->validate($request, [
			'select_file'  => 'required|mimes:xls,xlsx'
		]);

		$path = $request->file('select_file')->getRealPath();

		$data = Excel::load($path)->get();

		if($data->count() > 0)
		{
			foreach($data->toArray() as $key => $value)
			{
				foreach($value as $row)
				{
					$insert_data[] = array(
						'university'  => trim($row['university']),
						'name'   => trim($row['name']),
						'email'   => trim($row['email']),
						'phone'    => trim($row['phone']),
						'research_interests'  => trim($row['research_interests']),
						'disciplines'   => trim($row['disciplines']),
						'sub_disciplines1'   => trim($row['sub_disciplines_1']),
						'sub_disciplines2'   => trim($row['sub_disciplines_2']),
						'sub_disciplines3'   => trim($row['sub_disciplines_3']),
						'sub_disciplines4'   => trim($row['sub_disciplines_4']),
					);
				}
			}

			if(!empty($insert_data))
			{
				DB::table('professor_data')->insert($insert_data);
			}
		}
		return back()->with('success', 'Excel Data Imported successfully.');
	}
}
