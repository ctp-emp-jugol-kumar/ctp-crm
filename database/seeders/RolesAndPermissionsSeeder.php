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
            'list feature', 'create feature', 'update feature', 'delete feature',
            'list platform', 'create platform', 'update platform', 'delete platform',
            'list work', 'create work', 'update work', 'delete work',
            'list client', 'create client', 'update client', 'delete client',
            'list design', 'create design', 'update design', 'delete design',
            'list website', 'create website', 'update website', 'delete website',
            'list hosting', 'create hosting', 'update hosting', 'delete hosting',
            'list domain', 'create domain', 'update domain', 'delete domain',
            'list quotation', 'create quotation', 'update quotation', 'delete quotation',
            'list invoice', 'create invoice', 'update invoice', 'delete invoice',
            'list method', 'create method', 'update method', 'delete method',
            'list purpose', 'create purpose', 'update purpose', 'delete purpose',
            'list transaction', 'create transaction', 'update transaction', 'delete transaction',
            'list project', 'create project', 'update project', 'delete project', 'progress project',
            'list note', 'create note', 'update note', 'delete note',
            'view all client', 'view all transaction', 'view all invoice', 'view all quotation', 'assign user',
            'statement transaction', 'view all project', 'manage project description', 'manage project credential',
            'bulk assign agent', 'manage project progress', 'assign project user', 'bulk status client',
            'statement transaction', 'due report', 'sell report'
        ];
//        foreach ($all as $item) {
//            Permission::create([
//                'name' => $item,
//                'guard_name' => 'backpack'
//            ]);
//        };
        $role = Role::create([
            'name' => 'Administrator',
            'guard_name' => 'backpack'
        ]);
//        foreach ($all as $item) {
//            $role->givePermissionTo( $item );
//        };
        $user = User::create([
            'name' => 'Creative Tech Park',
            'email' => 'info@creativetechpark.com',
            'password' => bcrypt('creativetechpark'),
        ])->assignRole('Administrator');
    }
}
