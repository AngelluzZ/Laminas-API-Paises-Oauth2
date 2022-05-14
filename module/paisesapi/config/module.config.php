<?php
return [
    'router' => [
        'routes' => [
            'paisesapi.rest.countries' => [
                'type' => 'Segment',
                'options' => [
                    'route' => '/countries[/:countries_id]',
                    'defaults' => [
                        'controller' => 'paisesapi\\V1\\Rest\\Countries\\Controller',
                    ],
                ],
            ],
        ],
    ],
    'api-tools-versioning' => [
        'uri' => [
            0 => 'paisesapi.rest.countries',
        ],
    ],
    'api-tools-rest' => [
        'paisesapi\\V1\\Rest\\Countries\\Controller' => [
            'listener' => 'paisesapi\\V1\\Rest\\Countries\\CountriesResource',
            'route_name' => 'paisesapi.rest.countries',
            'route_identifier_name' => 'countries_id',
            'collection_name' => 'countries',
            'entity_http_methods' => [
                0 => 'GET',
                1 => 'PATCH',
                2 => 'PUT',
                3 => 'DELETE',
            ],
            'collection_http_methods' => [
                0 => 'GET',
                1 => 'POST',
            ],
            'collection_query_whitelist' => [],
            'page_size' => 25,
            'page_size_param' => null,
            'entity_class' => \paisesapi\V1\Rest\Countries\CountriesEntity::class,
            'collection_class' => \paisesapi\V1\Rest\Countries\CountriesCollection::class,
            'service_name' => 'countries',
        ],
    ],
    'api-tools-content-negotiation' => [
        'controllers' => [
            'paisesapi\\V1\\Rest\\Countries\\Controller' => 'HalJson',
        ],
        'accept_whitelist' => [
            'paisesapi\\V1\\Rest\\Countries\\Controller' => [
                0 => 'application/vnd.paisesapi.v1+json',
                1 => 'application/hal+json',
                2 => 'application/json',
            ],
        ],
        'content_type_whitelist' => [
            'paisesapi\\V1\\Rest\\Countries\\Controller' => [
                0 => 'application/vnd.paisesapi.v1+json',
                1 => 'application/json',
            ],
        ],
    ],
    'api-tools-hal' => [
        'metadata_map' => [
            \paisesapi\V1\Rest\Countries\CountriesEntity::class => [
                'entity_identifier_name' => 'id',
                'route_name' => 'paisesapi.rest.countries',
                'route_identifier_name' => 'countries_id',
                'hydrator' => \Laminas\Hydrator\ArraySerializableHydrator::class,
            ],
            \paisesapi\V1\Rest\Countries\CountriesCollection::class => [
                'entity_identifier_name' => 'id',
                'route_name' => 'paisesapi.rest.countries',
                'route_identifier_name' => 'countries_id',
                'is_collection' => true,
            ],
        ],
    ],
    'api-tools' => [
        'db-connected' => [
            'paisesapi\\V1\\Rest\\Countries\\CountriesResource' => [
                'adapter_name' => 'paisesdb',
                'table_name' => 'countries',
                'hydrator_name' => \Laminas\Hydrator\ArraySerializableHydrator::class,
                'controller_service_name' => 'paisesapi\\V1\\Rest\\Countries\\Controller',
                'entity_identifier_name' => 'id',
                'table_service' => 'paisesapi\\V1\\Rest\\Countries\\CountriesResource\\Table',
            ],
        ],
    ],
    'api-tools-content-validation' => [
        'paisesapi\\V1\\Rest\\Countries\\Controller' => [
            'input_filter' => 'paisesapi\\V1\\Rest\\Countries\\Validator',
        ],
    ],
    'input_filter_specs' => [
        'paisesapi\\V1\\Rest\\Countries\\Validator' => [
            0 => [
                'name' => 'phone',
                'required' => true,
                'filters' => [
                    0 => [
                        'name' => \Laminas\Filter\StripTags::class,
                    ],
                    1 => [
                        'name' => \Laminas\Filter\Digits::class,
                    ],
                ],
                'validators' => [],
            ],
            1 => [
                'name' => 'code',
                'required' => true,
                'filters' => [],
                'validators' => [],
            ],
            2 => [
                'name' => 'name',
                'required' => true,
                'filters' => [
                    0 => [
                        'name' => \Laminas\Filter\StringTrim::class,
                    ],
                    1 => [
                        'name' => \Laminas\Filter\StripTags::class,
                    ],
                ],
                'validators' => [
                    0 => [
                        'name' => \Laminas\Validator\StringLength::class,
                        'options' => [
                            'min' => 1,
                            'max' => '80',
                        ],
                    ],
                ],
            ],
            3 => [
                'name' => 'capital',
                'required' => false,
                'filters' => [
                    0 => [
                        'name' => \Laminas\Filter\StringTrim::class,
                    ],
                    1 => [
                        'name' => \Laminas\Filter\StripTags::class,
                    ],
                ],
                'validators' => [
                    0 => [
                        'name' => \Laminas\Validator\StringLength::class,
                        'options' => [
                            'min' => 1,
                            'max' => '80',
                        ],
                    ],
                ],
            ],
            4 => [
                'name' => 'continent',
                'required' => false,
                'filters' => [
                    0 => [
                        'name' => \Laminas\Filter\StringTrim::class,
                    ],
                    1 => [
                        'name' => \Laminas\Filter\StripTags::class,
                    ],
                ],
                'validators' => [
                    0 => [
                        'name' => \Laminas\Validator\StringLength::class,
                        'options' => [
                            'min' => 1,
                            'max' => '30',
                        ],
                    ],
                ],
            ],
        ],
    ],
    'api-tools-mvc-auth' => [
        'authorization' => [
            'paisesapi\\V1\\Rest\\Countries\\Controller' => [
                'collection' => [
                    'GET' => false,
                    'POST' => true,
                    'PUT' => false,
                    'PATCH' => false,
                    'DELETE' => false,
                ],
                'entity' => [
                    'GET' => true,
                    'POST' => false,
                    'PUT' => false,
                    'PATCH' => false,
                    'DELETE' => false,
                ],
            ],
        ],
    ],
];
