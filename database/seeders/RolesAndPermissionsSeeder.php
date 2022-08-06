<?php

namespace Database\Seeders;

use App\Models\Module;
use App\Models\User;
use Illuminate\Database\Seeder;
use Illuminate\Support\Str;
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
            [
                'module' => "Dashboard",
                'permissions' => [
                    'dashboard.show',
                    'dashboard.edit',
                ]
            ],
            [
                'module' => "User",
                'permissions' => [
                    'user.show',
                    'user.index',
                    'user.create',
                    'user.edit',
                    'user.delete'
                ]
            ],
            [
                'module' => "Client",
                'permissions' => [
                    'client.show',
                    'client.index',
                    'client.create',
                    'client.edit',
                    'client.delete'
                ]
            ],
            [
                'module' => "Feature",
                'permissions' => [
                    'feature.show',
                    'feature.index',
                    'feature.create',
                    'feature.edit',
                    'feature.delete'
                ]
            ],
            [
                'module' => "Platform",
                'permissions' => [
                    'platform.show',
                    'platform.index',
                    'platform.create',
                    'platform.edit',
                    'platform.delete'
                ]
            ],
            [
                'module' => "Work",
                'permissions' => [
                    'work.show',
                    'work.index',
                    'work.create',
                    'work.edit',
                    'work.delete'
                ]
            ],
            [
                'module' => "Design",
                'permissions' => [
                    'design.show',
                    'design.index',
                    'design.create',
                    'design.edit',
                    'design.delete'
                ]
            ],
            [
                'module' => "Website",
                'permissions' => [
                    'website.show',
                    'website.index',
                    'website.create',
                    'website.edit',
                    'website.delete'
                ]
            ],
            [
                'module' => "Hosting",
                'permissions' => [
                    'hosting.show',
                    'hosting.index',
                    'hosting.create',
                    'hosting.edit',
                    'hosting.delete'
                ]
            ],
            [
                'module' => "Domain",
                'permissions' => [
                    'domain.show',
                    'domain.index',
                    'domain.create',
                    'domain.edit',
                    'domain.delete'
                ]
            ],
            [
                'module' => "Quotation",
                'permissions' => [
                    'quotation.show',
                    'quotation.index',
                    'quotation.create',
                    'quotation.edit',
                    'quotation.delete'
                ]
            ],
            [
                'module' => "Invoice",
                'permissions' => [
                    'invoice.show',
                    'invoice.index',
                    'invoice.create',
                    'invoice.edit',
                    'invoice.delete'
                ]
            ],
            [
                'module' => "Method",
                'permissions' => [
                    'method.show',
                    'method.index',
                    'method.create',
                    'method.edit',
                    'method.delete'
                ]
            ],
            [
                'module' => "Purpose",
                'permissions' => [
                    'purpose.show',
                    'purpose.index',
                    'purpose.create',
                    'purpose.edit',
                    'purpose.delete'
                ]
            ],
            [
                'module' => "Transaction",
                'permissions' => [
                    'transaction.show',
                    'transaction.index',
                    'transaction.create',
                    'transaction.edit',
                    'transaction.delete'
                ]
            ],
            [
                'module' => "Project",
                'permissions' => [
                    'project.show',
                    'project.index',
                    'project.create',
                    'project.edit',
                    'project.delete'
                ]
            ],
            [
                'module' => "Note",
                'permissions' => [
                    'note.show',
                    'note.index',
                    'note.create',
                    'note.edit',
                    'note.delete'
                ]
            ],
        ];

        foreach ($all as $item) {
            $module = Module::updateOrCreate([
                'module_name' => $item['module'],
                'slug' => Str::slug($item['module']),
            ]);

            foreach ($item['permissions'] as $permission){
                Permission::updateOrCreate([
                    'name' => $permission,
                    'module_name' => $item['module'],
                    'module_id' => $module->id,
                ]);
            }

        };

        Role::updateOrCreate(['name' => 'Administrator']);
        $developer = Role::updateOrCreate(['name' => 'Developer']);

        foreach ($all as $item) {
            foreach ($item['permissions'] as $permission) {
                $developer->givePermissionTo( $permission );
            }
        };

        User::updateOrCreate([
            'name' => 'Jugol Kumar',
            'email' => 'jugol@creativetechpark.com',
            'password' => bcrypt(12345678),
        ])->assignRole('Developer');

        User::updateOrCreate([
            'name' => 'Creative Tech Park',
            'email' => 'info@creativetechpark.com',
            'password' => bcrypt('creativetechpark'),
        ])->assignRole('Administrator');
    }
}
