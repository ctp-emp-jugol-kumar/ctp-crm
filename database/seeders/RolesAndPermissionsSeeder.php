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
                ],
                'name' => [
                    'Show Dashboard',
                    'Edit Dashboard',
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
                ],
                'name' => [
                    'Show User',
                    'Manage User',
                    'Create User',
                    'Edit User',
                    'Delete User'
                ]
            ],
            [
                'module' => "Authorizations",
                'permissions' => [
                    'authorization.show',
                    'authorization.index',
                    'authorization.create',
                    'authorization.edit',
                    'authorization.delete'
                ],
                'name' => [
                    'Show Authorizations',
                    'Manage Authorizations',
                    'Create Authorizations',
                    'Edit Authorizations',
                    'Delete Authorizations'
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
                ],
                'name' => [
                    'Show Client',
                    'Manage Client',
                    'Create Client',
                    'Edit Client',
                    'Delete Client'
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
                ],
                'name' => [
                    'Show Feature',
                    'Manage Feature',
                    'Create Feature',
                    'Edit Feature',
                    'Delete Feature'
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
                ],
                'name' => [
                    'Show Platform',
                    'Manage Platform',
                    'Create Platform',
                    'Edit Platform',
                    'Delete Platform'
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
                ],
                'name' => [
                    'Show Work',
                    'Manage Work',
                    'Create Work',
                    'Edit Work',
                    'Delete Work'
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
                ],
                'name' => [
                    'Show Design',
                    'Manage Design',
                    'Create Design',
                    'Edit Design',
                    'Delete Design'
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
                ],
                'name' => [
                    'Show Website',
                    'Manage Website',
                    'Create Website',
                    'Edit Website',
                    'Delete Website'
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
                ],
                'name' => [
                    'Show Hosting',
                    'Manage Hosting',
                    'Create Hosting',
                    'Edit Hosting',
                    'Delete Hosting'
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
                ],
                'name' => [
                    'Show Domain',
                    'Manage Domain',
                    'Create Domain',
                    'Edit Domain',
                    'Delete Domain'
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
                ],
                'name' => [
                    'Show Quotation',
                    'Manage Quotation',
                    'Create Quotation',
                    'Edit Quotation',
                    'Delete Quotation'
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
                ],
                'name' => [
                    'Show Invoice',
                    'Manage Invoice',
                    'Create Invoice',
                    'Edit Invoice',
                    'Delete Invoice'
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
                ],
                'name' => [
                    'Show Method',
                    'Manage Method',
                    'Create Method',
                    'Edit Method',
                    'Delete Method'
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
                ],
                'name' => [
                    'Show Purpose',
                    'Manage Purpose',
                    'Create Purpose',
                    'Edit Purpose',
                    'Delete Purpose'
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
                ],
                'name' => [
                    'Show Transaction',
                    'Manage Transaction',
                    'Create Transaction',
                    'Edit Transaction',
                    'Delete Transaction'
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
                ],
                'name' => [
                    'Show Project',
                    'Manage Project',
                    'Create Project',
                    'Edit Project',
                    'Delete Project'
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
                ],
                'name' => [
                    'Show Note',
                    'Manage Note',
                    'Create Note',
                    'Edit Note',
                    'Delete Note'
                ]
            ],
        ];

        foreach ($all as $item) {
            $module = Module::updateOrCreate([
                'module_name' => $item['module'],
                'slug' => Str::slug($item['module']),
            ]);

            foreach ($item['permissions'] as $key => $permission){
                Permission::updateOrCreate([
                    'name' => $permission,
                    'show_name' => $item['name'][$key],
                    'module_name' => $item['module'],
                    'module_id' => $module->id,
                ]);
            }
        };

        Role::updateOrCreate(['name' => 'Administrator', 'is_delete' => false]);
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
