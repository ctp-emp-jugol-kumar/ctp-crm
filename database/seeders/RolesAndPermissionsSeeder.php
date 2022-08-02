<?php

namespace Database\Seeders;

use App\Models\User;
use Illuminate\Database\Seeder;
use Spatie\Permission\Models\Role;
use Spatie\Permission\Models\Permission;

class RolesAndPermissionsSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        $all = [
            'list_feature', 'create_feature', 'update_feature', 'delete_feature',
            'list_platform', 'create_platform', 'update_platform', 'delete_platform',
            'list_work', 'create_work', 'update_work', 'delete_work',
            'list_client', 'create_client', 'update_client', 'delete_client',
            'list_design', 'create_design', 'update_design', 'delete_design',
            'list_website', 'create_website', 'update_website', 'delete_website',
            'list_hosting', 'create_hosting', 'update_hosting', 'delete_hosting',
            'list_domain', 'create_domain', 'update_domain', 'delete_domain',
            'list_quotation', 'create_quotation', 'update_quotation', 'delete_quotation',
            'list_invoice', 'create_invoice', 'update_invoice', 'delete_invoice',
            'list_method', 'create_method', 'update_method', 'delete_method',
            'list_purpose', 'create_purpose', 'update_purpose', 'delete_purpose',
            'list_transaction', 'create_transaction', 'update_transaction', 'delete_transaction',
            'list_project', 'create_project', 'update_project', 'delete_project', 'progress project',
            'list_note', 'create_note', 'update_note', 'delete_note','Website_coordinate',
        ];

        foreach ($all as $item) {
            Permission::create(['name' => $item]);
        };

        $role = Role::create(['name' => 'Administrator']);
        $developer = Role::create(['name' => 'Developer']);

        foreach ($all as $item) {
            $developer->givePermissionTo( $item );
        };

        $user = User::create([
            'name' => 'Jugol Kumar',
            'email' => 'jugol@creativetechpark.com',
            'password' => bcrypt(12345678),
        ]);

        $user->givePermissionTo('Website_coordinate');
        $user->assignRole('Developer');

//
////        $user = User::create([
////            'name' => 'Creative Tech Park',
////            'email' => 'info@creativetechpark.com',
////            'password' => bcrypt('creativetechpark'),
////        ])->assignRole('Administrator');
    }
}
