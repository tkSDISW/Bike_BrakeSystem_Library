library package 'Bike BrakeSystem Library Library' {
    private import ARCADIA::*; 
    @PackageMeta {
        type = "Library";
    } 
    @CapellaID { eid = "3cd1a475-4093-4ca1-9774-5fa9a0ae6453"; } 
    package 'Bike BrakeSystem Library' {
        @PackageMeta {
            type = "SystemEngineering";
        } 
        @CapellaID { eid = "116863ff-33c8-4e32-a646-bcb90d13f30f"; } 
        package 'Operational Analysis' {
            @PackageMeta {
                type = "OperationalAnalysis";
            } 
            @CapellaID { eid = "8c1f5981-08b4-4ca0-bd89-068699b8aae4"; } 
            package 'Operational Activities' {
                @PackageMeta {
                    type = "OperationalActivityPkg";
                } 
                @CapellaID { eid = "01ec8cb7-4104-4f4e-b575-1445f8dff1e0"; } 
                action 'Root Operational Activity' : OperationalActivity  { 
                    @CapellaID { eid = "cd0b1592-acd1-4215-b0ba-69231a167079"; } 
                    attribute :>> aggregationKind = AggregationKind::UNSET; 
                    attribute :>> isFinal = false; 
                    attribute :>> isAbstract = false; 
                    attribute :>> isDerived = false; 
                    attribute :>> isPartOfKey = false; 
                    attribute :>> isReadOnly = false; 
                    attribute :>> isStatic = false; 
                    attribute :>> kind = FunctionKind::FUNCTION; 
                    attribute :>> isMaxInclusive = false; 
                    attribute :>> isMinInclusive = false; 
                    attribute :>> isOrdered = false; 
                    attribute :>> isUnique = false; 
                }  
            } 
            package 'Operational Capabilities' {
                @PackageMeta {
                    type = "OperationalCapabilityPkg";
                } 
                @CapellaID { eid = "3abe469c-6f65-4018-9f67-4db9d5c7e21a"; } 
            } 
            package 'Interfaces' {
                @PackageMeta {
                    type = "InterfacePkg";
                } 
                @CapellaID { eid = "827f5ef8-2a38-466d-867d-88ad656ce52b"; } 
            } 
            package 'Data' {
                @PackageMeta {
                    type = "DataPkg";
                } 
                @CapellaID { eid = "cc40ef73-e1b2-4d43-b052-d1568c70ce59"; } 
            } 
            package 'Roles' {
                @PackageMeta {
                    type = "RolePkg";
                } 
                @CapellaID { eid = "811f5868-43cb-4691-81c4-85bef5561049"; } 
            } 
            package 'Operational Entities' {
                @PackageMeta {
                    type = "EntityPkg";
                } 
                @CapellaID { eid = "f2915c17-49fd-46a3-8bad-989b92feff16"; } 
            } 
        } 
        package 'System Analysis' {
            @PackageMeta {
                type = "SystemAnalysis";
            } 
            @CapellaID { eid = "14d8a0dd-2702-4b12-bb04-80306e1a0f2a"; sid = "4d83f6f3-354a-4074-a41c-d19d85d2ae2d"; } 
            package 'System Functions' {
                @PackageMeta {
                    type = "SystemFunctionPkg";
                } 
                @CapellaID { eid = "036bbff4-a953-44c6-a7e5-b15c38c80ffb"; } 
                action 'Root System Function' : SystemFunction  { 
                    @CapellaID { eid = "f1a33a81-4f88-431f-bf7e-70960fb2579d"; sid = "068d83c5-724e-4d0e-bb0b-09836e7523c0"; } 
                    attribute :>> aggregationKind = AggregationKind::UNSET; 
                    attribute :>> isFinal = false; 
                    attribute :>> isAbstract = false; 
                    attribute :>> isDerived = false; 
                    attribute :>> isPartOfKey = false; 
                    attribute :>> isReadOnly = false; 
                    attribute :>> isStatic = false; 
                    attribute :>> kind = FunctionKind::FUNCTION; 
                    attribute :>> isMaxInclusive = false; 
                    attribute :>> isMinInclusive = false; 
                    attribute :>> isOrdered = false; 
                    attribute :>> isUnique = false; 
                    interface '228970ed-c81c-478b-9793-d2f327740006' : FunctionalExchange 
                        connect source ::> 'Split 14'.'FOP 2'
                        to target ::> 'Provide Stopping'.'FIP 1' { 
                        @CapellaID { eid = "228970ed-c81c-478b-9793-d2f327740006"; sid = "062acd6a-7b36-4560-8ab3-7f514699b29b"; } 
                        attribute :>> isMulticast = false; 
                        attribute :>> isMultireceive = false; 
                        attribute :>> kindOfRate = RateKind::Unspecified; 
                        attribute :>> interfaceName = "Brake Controls"; 
                    }  
                    interface '4f4f9dae-04b3-45d0-b17a-43f31772225a' : FunctionalExchange 
                        connect source ::> 'Provide Stopping'.'FOP 1'
                        to target ::> 'Transfer Propulson and Stopping Force'.'FIP 2' { 
                        @CapellaID { eid = "4f4f9dae-04b3-45d0-b17a-43f31772225a"; sid = "a2042318-20c0-4943-be11-b77786de1458"; } 
                        attribute :>> isMulticast = false; 
                        attribute :>> isMultireceive = false; 
                        attribute :>> kindOfRate = RateKind::Unspecified; 
                        attribute :>> interfaceName = "Stopping Forces"; 
                    }  
                    action 'Stopping' : FunctionalChain  { 
                        @CapellaID { eid = "62986e4d-c22d-43f1-b70a-89b4f7a0d6d8"; sid = "5b2f0f84-6aa8-4dfb-8a2c-a792d996a457"; } 
                        attribute :>> kind = FunctionalChainKind::SIMPLE; 
                        connection '33495806-4d99-44c6-920f-7e6f03340099' : FunctionalChainInvolvementLink 
                            connect source ::> '86f31cca-66bc-43cb-abd7-24844218010a'
                            to  target ::> 'b27f01ed-c1c3-4b42-8c37-03cde99c7af5' {

                                ref :>> involved = '228970ed-c81c-478b-9793-d2f327740006';

                            } 
                        ref action 'b27f01ed-c1c3-4b42-8c37-03cde99c7af5' = 'Provide Stopping'; 
                        ref action '86f31cca-66bc-43cb-abd7-24844218010a' = 'Split 14'; 
                        connection '89605d1f-e543-424c-979f-736a1b80a046' : FunctionalChainInvolvementLink 
                            connect source ::> 'b27f01ed-c1c3-4b42-8c37-03cde99c7af5'
                            to  target ::> '54d2c0ed-83e5-4d2d-b058-92d5b0a456f4' {

                                ref :>> involved = '4f4f9dae-04b3-45d0-b17a-43f31772225a';

                            } 
                        ref action '54d2c0ed-83e5-4d2d-b058-92d5b0a456f4' = 'Transfer Propulson and Stopping Force'; 
                    }  
                    action 'Powering' : FunctionalChain  { 
                        @CapellaID { eid = "247b9901-9a8c-4717-922c-c59558c5d295"; sid = "738e4672-cd66-4e48-8417-800be54e075c"; } 
                        attribute :>> kind = FunctionalChainKind::SIMPLE; 
                    }  
                    action 'Steering' : FunctionalChain  { 
                        @CapellaID { eid = "3958dd81-1d68-4a09-919f-0e94e72cdb91"; sid = "f6f74163-cde2-46dc-b5c4-8ed2986fc3f0"; } 
                        attribute :>> kind = FunctionalChainKind::SIMPLE; 
                    }  
                    action 'Shifting' : FunctionalChain  { 
                        @CapellaID { eid = "36913225-2014-45b5-be7d-43f5efd6a242"; sid = "3772878f-9ba3-4625-a49b-a41da0338909"; } 
                        attribute :>> kind = FunctionalChainKind::SIMPLE; 
                    }  
                    action 'Ride Mountain Trails' : FunctionalChain  { 
                        @CapellaID { eid = "771678b7-90a2-4fa7-8a79-33d066afcf8d"; sid = "fd86f162-9130-44a4-adf3-50d5ab66d13e"; } 
                        attribute :>> kind = FunctionalChainKind::SIMPLE; 
                        ref action '0fb70f28-fdb5-4e62-a014-67929ed8ec94' = 'Stopping'; 
                        ref action '0b54f0a9-b1e3-4514-bc49-2da9e3987434' = 'Powering'; 
                        ref action '036124cd-ac9a-47bf-befd-b9ce4e2ee79b' = 'Steering'; 
                        ref action '804b80ab-741e-40de-95e1-8b363b6a422d' = 'Shifting'; 
                        ref action '54a524f4-55a0-4a1d-9d9a-a1813853e3ca' = 'Provide Comfort'; 
                    }  
                    action 'Provide Comfort' : FunctionalChain  { 
                        @CapellaID { eid = "931ea7d4-9408-451e-b087-8e62816254a7"; sid = "3794bc0e-f3e7-43f3-bc2e-856e278d819a"; } 
                        attribute :>> kind = FunctionalChainKind::SIMPLE; 
                    }  
                    action 'Provide Stopping' : SystemFunction  { 
                        @CapellaID { eid = "c448192e-8fec-46d8-aaac-126ac5360ada"; sid = "965d5df2-2134-40c0-b2af-22fcefefc1b2"; } 
                        attribute :>> aggregationKind = AggregationKind::UNSET; 
                        attribute :>> isFinal = false; 
                        attribute :>> isAbstract = false; 
                        attribute :>> isDerived = false; 
                        attribute :>> isPartOfKey = false; 
                        attribute :>> isReadOnly = false; 
                        attribute :>> isStatic = false; 
                        attribute :>> kind = FunctionKind::FUNCTION; 
                        attribute :>> isMaxInclusive = false; 
                        attribute :>> isMinInclusive = false; 
                        attribute :>> isOrdered = false; 
                        attribute :>> isUnique = false; 
                        in port 'FIP 1' : FunctionInputPort  { 
                            @CapellaID { eid = "ed570570-a9b3-4ae8-b84b-fd3ef885bcd9"; sid = "ce69df36-b188-4f28-adaf-ea5237594c53"; } 
                            attribute :>> isControl = false; 
                            attribute :>> isControlType = false; 
                            attribute :>> kindOfNode = ObjectNodeKind::Unspecified; 
                            attribute :>> ordering = ObjectNodeOrderingKind::FIFO; 
                        }  
                        out port 'FOP 1' : FunctionOutputPort  { 
                            @CapellaID { eid = "3a6d0bb4-62d6-4e26-a450-0f852a1a09b3"; sid = "ae2709f9-f8b4-45b1-8090-9cb1b643a0fd"; } 
                            attribute :>> isControl = false; 
                            attribute :>> isControlType = false; 
                            attribute :>> kindOfNode = ObjectNodeKind::Unspecified; 
                            attribute :>> ordering = ObjectNodeOrderingKind::FIFO; 
                        }  
                        ref :>> inputs =  ('FIP 1'); 
                        ref :>> outputs =  ('FOP 1'); 
                    }  
                    action 'Split 14' : SystemFunction  { 
                        @CapellaID { eid = "88075f16-1824-47a2-b12a-5d361f66d39b"; sid = "a3973022-11b4-4fc9-aa66-357f96bec611"; } 
                        attribute :>> aggregationKind = AggregationKind::UNSET; 
                        attribute :>> isFinal = false; 
                        attribute :>> isAbstract = false; 
                        attribute :>> isDerived = false; 
                        attribute :>> isPartOfKey = false; 
                        attribute :>> isReadOnly = false; 
                        attribute :>> isStatic = false; 
                        attribute :>> kind = FunctionKind::SPLIT; 
                        attribute :>> isMaxInclusive = false; 
                        attribute :>> isMinInclusive = false; 
                        attribute :>> isOrdered = false; 
                        attribute :>> isUnique = false; 
                        out port 'FOP 2' : FunctionOutputPort  { 
                            @CapellaID { eid = "66887ff7-91e8-40bc-8062-66bc32ab4715"; sid = "12525133-91ef-4e8c-8a2f-c777faa595bf"; } 
                            attribute :>> isControl = false; 
                            attribute :>> isControlType = false; 
                            attribute :>> kindOfNode = ObjectNodeKind::Unspecified; 
                            attribute :>> ordering = ObjectNodeOrderingKind::FIFO; 
                        }  
                        ref :>> outputs =  ('FOP 2'); 
                    }  
                    action 'Transfer Propulson and Stopping Force' : SystemFunction  { 
                        @CapellaID { eid = "111a188b-ed8a-4c6e-8971-7dfe269f36bc"; sid = "b277c9bf-04eb-4482-bf1b-4fdb2848bf8d"; } 
                        attribute :>> aggregationKind = AggregationKind::UNSET; 
                        attribute :>> isFinal = false; 
                        attribute :>> isAbstract = false; 
                        attribute :>> isDerived = false; 
                        attribute :>> isPartOfKey = false; 
                        attribute :>> isReadOnly = false; 
                        attribute :>> isStatic = false; 
                        attribute :>> kind = FunctionKind::FUNCTION; 
                        attribute :>> isMaxInclusive = false; 
                        attribute :>> isMinInclusive = false; 
                        attribute :>> isOrdered = false; 
                        attribute :>> isUnique = false; 
                        in port 'FIP 2' : FunctionInputPort  { 
                            @CapellaID { eid = "489ebe0b-24a8-4bd4-9e88-46dfd5ddd639"; sid = "e32af765-0d7e-4071-89fb-000a2dc4e57d"; } 
                            attribute :>> isControl = false; 
                            attribute :>> isControlType = false; 
                            attribute :>> kindOfNode = ObjectNodeKind::Unspecified; 
                            attribute :>> ordering = ObjectNodeOrderingKind::FIFO; 
                        }  
                        ref :>> inputs =  ('FIP 2'); 
                    }  
                    ref :>> ownedFunctionalExchanges =  ('228970ed-c81c-478b-9793-d2f327740006',
                    '4f4f9dae-04b3-45d0-b17a-43f31772225a'); 
                    ref :>> ownedFunctions =  ('Provide Stopping',
                    'Split 14',
                    'Transfer Propulson and Stopping Force'); 
                     
                }  
            } 
            package 'Capabilities' {
                @PackageMeta {
                    type = "CapabilityPkg";
                } 
                @CapellaID { eid = "931dc9af-6963-4f36-89e3-9c62491e6254"; sid = "b39b6a63-124e-46c8-a08e-82d1f202320e"; } 
                use case 'Terrain Navigation' : Capability { 
                    @CapellaID { eid = "247335e7-edd9-401f-8b48-43c8b22263dc"; sid = "651a9f6e-a9fd-4505-9b89-13835bbc265c"; } 
                    ref action '79eb6beb-fab6-41d4-b979-95fa5c7e1e9c' = 'System Functions'::'Root System Function'.'Ride Mountain Trails'; 
                }  
                use case 'Durability and Shock Absorption' : Capability { 
                    @CapellaID { eid = "fc4d6c68-cc5c-4eee-96b7-c559bb4a2cf4"; sid = "02aad7ac-a041-47ef-9751-7d6d3049f56f"; } 
                    ref action 'ff9490db-287a-4c8c-866d-7984a9877bca' = 'System Functions'::'Root System Function'.'Ride Mountain Trails'; 
                }  
                use case 'Climatic Adabptability' : Capability { 
                    @CapellaID { eid = "1e696ee9-4cd7-4642-9dff-9395980e5873"; sid = "8c5fba0f-1df8-4761-ae95-ae5aa330437d"; } 
                    ref action 'eac3b427-ea94-4d06-b977-c06ba3681470' = 'System Functions'::'Root System Function'.'Ride Mountain Trails'; 
                }  
                use case 'Maneuverability' : Capability { 
                    @CapellaID { eid = "26b7069b-820e-40c1-a542-e02a26bebd98"; sid = "2b779e85-100c-449a-906a-85cf5bddd02b"; } 
                    ref action 'f0093fb7-94d8-457e-bb59-f31bc6d31562' = 'System Functions'::'Root System Function'.'Ride Mountain Trails'; 
                }  
                use case 'Mountain Trail Ride' : Capability { 
                    @CapellaID { eid = "4aae8c0b-9250-4396-9899-a1f9f759dd33"; sid = "02744ab1-f8b2-43c3-9e32-dd8e7e8f2e18"; } 
                    actor 'e491c32b-ba9b-490b-9f96-8f2f0e5ac40b' = 'Structure'::'Wheels and Tires'; 
                    actor 'abbfd23b-a85d-4e17-a458-c102b8f44e3e' = 'Structure'::'Cockpit'; 
                    ref action 'bba6e310-ae23-42e9-affa-921de32bae9a' = 'System Functions'::'Root System Function'.'Ride Mountain Trails'; 
                }  
            } 
            package 'Interfaces' {
                @PackageMeta {
                    type = "InterfacePkg";
                } 
                @CapellaID { eid = "acb71671-f3cd-43a6-aaa3-f616e87afe32"; } 
            } 
            package 'Data' {
                @PackageMeta {
                    type = "DataPkg";
                } 
                @CapellaID { eid = "209f441a-ba65-4afe-b727-3f781dec073c"; } 
                item 'Class 1' : Class  { 
                    @CapellaID { eid = "8bd0b4ce-41e8-4e6e-b31d-9923740379b2"; } 
                    attribute :>> isAbstract = false; 
                    attribute :>> isFinal = false; 
                    attribute :>> isPrimitive = false; 
                }  
                item 'Force' : ExchangeItem  { 
                    @CapellaID { eid = "84eee6ce-5e62-41f6-8fbd-2210f7c95e5c"; } 
                    attribute :>> isAbstract = false; 
                    attribute :>> exchangeMechanism = ExchangeMechanism::FLOW; 
                    attribute :>> isFinal = false; 
                    item 'ExchangeItemElement 1' : ExchangeItemElement { 
                        @CapellaID { eid = "f4c1d712-c0c7-4827-9b32-6a86793237bf"; } 
                        attribute :>> isComposite = true; 
                        attribute :>> direction = ParameterDirection::UNSET; 
                        attribute :>> kind = ElementKind::TYPE; 
                        attribute :>> isMaxInclusive = false; 
                        attribute :>> isMinInclusive = false; 
                        attribute :>> isOrdered = false; 
                        attribute :>> isUnique = false; 
                         
                         
                        ref :>> abstractType = 'Class 1';
                    } 
                    ref :>> ownedElements =  ('ExchangeItemElement 1'); 
                }  
                package 'Predefined Types' {
                    @PackageMeta {
                        type = "DataPkg";
                    } 
                    @CapellaID { eid = "f414eec9-bef5-4d3a-bbc8-d0d335c61e3f"; } 
                } 
            } 
            package 'Structure' {
                @PackageMeta {
                    type = "SystemComponentPkg";
                } 
                @CapellaID { eid = "3073b755-e7bd-461e-a36f-3eff58df361d"; } 
                part '0d87b8e6-d09b-4f7c-8a74-a3bedfdc9ed4' : CPart :> 'Frame and Suspension'  { 
                    @CapellaID { eid = "0d87b8e6-d09b-4f7c-8a74-a3bedfdc9ed4"; sid = "5a84df5f-1b54-4417-b127-359536e86288"; } 
                    attribute :>> aggregationKind = AggregationKind::UNSET; 
                    attribute :>> isFinal = false; 
                    attribute :>> isAbstract = false; 
                    attribute :>> isDerived = false; 
                    attribute :>> isPartOfKey = false; 
                    attribute :>> isReadOnly = false; 
                    attribute :>> isStatic = false; 
                    attribute :>> isMaxInclusive = false; 
                    attribute :>> isMinInclusive = false; 
                    attribute :>> isOrdered = false; 
                    attribute :>> isUnique = false; 
                }  
                part '062eb484-d1a7-43f1-b2d3-43491619dd73' : CPart :> 'Wheels and Tires'  { 
                    @CapellaID { eid = "062eb484-d1a7-43f1-b2d3-43491619dd73"; sid = "98bd50f7-91bc-4fd3-85df-20ae1b32317b"; } 
                    attribute :>> aggregationKind = AggregationKind::UNSET; 
                    attribute :>> isFinal = false; 
                    attribute :>> isAbstract = false; 
                    attribute :>> isDerived = false; 
                    attribute :>> isPartOfKey = false; 
                    attribute :>> isReadOnly = false; 
                    attribute :>> isStatic = false; 
                    attribute :>> isMaxInclusive = false; 
                    attribute :>> isMinInclusive = false; 
                    attribute :>> isOrdered = false; 
                    attribute :>> isUnique = false; 
                }  
                part 'f9b18fdf-1229-4656-a699-54045cd856e5' : CPart :> 'Braking System'  { 
                    @CapellaID { eid = "f9b18fdf-1229-4656-a699-54045cd856e5"; sid = "7fae60bd-0078-490a-a311-dceb133e1c4e"; } 
                    attribute :>> aggregationKind = AggregationKind::UNSET; 
                    attribute :>> isFinal = false; 
                    attribute :>> isAbstract = false; 
                    attribute :>> isDerived = false; 
                    attribute :>> isPartOfKey = false; 
                    attribute :>> isReadOnly = false; 
                    attribute :>> isStatic = false; 
                    attribute :>> isMaxInclusive = false; 
                    attribute :>> isMinInclusive = false; 
                    attribute :>> isOrdered = false; 
                    attribute :>> isUnique = false; 
                }  
                part 'e550ffcb-ecee-4557-b25b-4084bce2c088' : CPart :> 'Cockpit'  { 
                    @CapellaID { eid = "e550ffcb-ecee-4557-b25b-4084bce2c088"; sid = "2d880ba9-1f95-4336-830c-72644069b878"; } 
                    attribute :>> aggregationKind = AggregationKind::UNSET; 
                    attribute :>> isFinal = false; 
                    attribute :>> isAbstract = false; 
                    attribute :>> isDerived = false; 
                    attribute :>> isPartOfKey = false; 
                    attribute :>> isReadOnly = false; 
                    attribute :>> isStatic = false; 
                    attribute :>> isMaxInclusive = false; 
                    attribute :>> isMinInclusive = false; 
                    attribute :>> isOrdered = false; 
                    attribute :>> isUnique = false; 
                }  
                part 'Frame and Suspension' : SystemComponent { 
                    @CapellaID { eid = "7fd813fe-fa2c-4b91-83d2-f47bbbf4046a"; sid = "8c2d60a2-bf52-4e83-8fc2-0d329f7637b4"; } 
                    attribute :>> isAbstract = false; 
                    attribute :>> isActor = true; 
                    attribute :>> isDataComponent = false; 
                    attribute :>> isHuman = false; 
                    port 'CP 1' : ComponentPort { 
                        @CapellaID { eid = "65e778b9-4ea3-4ea8-a432-108dc50ce5ed"; sid = "8d224cfb-5cc2-4158-90c3-949b76bad72d"; } 
                        attribute :>> aggregationKind = AggregationKind::UNSET; 
                        attribute :>> isFinal = false; 
                        attribute :>> isAbstract = false; 
                        attribute :>> isDerived = false; 
                        attribute :>> isPartOfKey = false; 
                        attribute :>> isReadOnly = false; 
                        attribute :>> isStatic = false; 
                        attribute :>> kind = ComponentPortKind::FLOW; 
                        attribute :>> isMaxInclusive = false; 
                        attribute :>> isMinInclusive = false; 
                        attribute :>> isOrdered = false; 
                        attribute :>> orientation = OrientationPortKind::INOUT; 
                        attribute :>> isUnique = false; 
                    }  
                }  
                part 'Wheels and Tires' : SystemComponent { 
                    @CapellaID { eid = "b9667028-5a49-48bc-b8aa-ae710b559cd9"; sid = "90f89672-7087-4970-95d5-8fdecd5f07b0"; } 
                    attribute :>> isAbstract = false; 
                    attribute :>> isActor = true; 
                    attribute :>> isDataComponent = false; 
                    attribute :>> isHuman = false; 
                    allocation 'ffd44d37-8db5-4362-bb9b-270d9ad790c4' : ComponentFunctionalAllocation
                        allocate function ::> 'System Functions'::'Root System Function'.'Transfer Propulson and Stopping Force'
                        to component ::> 'Structure'::'Wheels and Tires' { 
                        @CapellaID { eid = "ffd44d37-8db5-4362-bb9b-270d9ad790c4"; sid = "20c150d3-b291-46ed-bf66-538c9cb0c857"; } 
                    } 
                    perform 'System Functions'::'Root System Function'.'Transfer Propulson and Stopping Force' ; 
                    port 'CP 1' : ComponentPort { 
                        @CapellaID { eid = "f675c734-61c1-40e2-884c-85a13c99c552"; sid = "4407cf9d-ebca-4a31-9e1c-a688800b2338"; } 
                        attribute :>> aggregationKind = AggregationKind::UNSET; 
                        attribute :>> isFinal = false; 
                        attribute :>> isAbstract = false; 
                        attribute :>> isDerived = false; 
                        attribute :>> isPartOfKey = false; 
                        attribute :>> isReadOnly = false; 
                        attribute :>> isStatic = false; 
                        attribute :>> kind = ComponentPortKind::FLOW; 
                        attribute :>> isMaxInclusive = false; 
                        attribute :>> isMinInclusive = false; 
                        attribute :>> isOrdered = false; 
                        attribute :>> orientation = OrientationPortKind::INOUT; 
                        attribute :>> isUnique = false; 
                    }  
                    ref :>> ownedFunctionalAllocation =  ('ffd44d37-8db5-4362-bb9b-270d9ad790c4'); 
                }  
                part 'Braking System' : SystemComponent { 
                    @CapellaID { eid = "bab8a610-ca18-496a-a77c-96dbc8f1ae8f"; sid = "d8e659e7-e706-4251-95d2-35d2000ee608"; } 
                    attribute :>> isAbstract = false; 
                    attribute :>> isActor = false; 
                    attribute :>> isDataComponent = false; 
                    attribute :>> isHuman = false; 
                    allocation '09409d87-5155-4b39-a367-93d6e0be6e18' : ComponentFunctionalAllocation
                        allocate function ::> 'System Functions'::'Root System Function'.'Provide Stopping'
                        to component ::> 'Structure'::'Braking System' { 
                        @CapellaID { eid = "09409d87-5155-4b39-a367-93d6e0be6e18"; sid = "a7c26947-fdbf-47af-bee3-42c69971c340"; } 
                    } 
                    perform 'System Functions'::'Root System Function'.'Provide Stopping' ; 
                    state 'System State Machine' : StateMachine  { 
                        @CapellaID { eid = "1fea50fc-338d-490e-8e10-f62733b39fb2"; } 
                        attribute :>> isControlOperator = false; 
                    }  
                    port 'CP 1' : ComponentPort { 
                        @CapellaID { eid = "4d1e668e-218d-44e1-9a42-69d480fb7325"; sid = "dd149036-55a5-48f5-8ea3-14c9cfe5f81c"; } 
                        attribute :>> aggregationKind = AggregationKind::UNSET; 
                        attribute :>> isFinal = false; 
                        attribute :>> isAbstract = false; 
                        attribute :>> isDerived = false; 
                        attribute :>> isPartOfKey = false; 
                        attribute :>> isReadOnly = false; 
                        attribute :>> isStatic = false; 
                        attribute :>> kind = ComponentPortKind::FLOW; 
                        attribute :>> isMaxInclusive = false; 
                        attribute :>> isMinInclusive = false; 
                        attribute :>> isOrdered = false; 
                        attribute :>> orientation = OrientationPortKind::INOUT; 
                        attribute :>> isUnique = false; 
                    }  
                    port 'CP 2' : ComponentPort { 
                        @CapellaID { eid = "8dcb2c69-13a6-4f0b-9ff0-c47d03ddd3a1"; sid = "8eb6eb8c-5d9a-46db-9f22-a7865b06bd7b"; } 
                        attribute :>> aggregationKind = AggregationKind::UNSET; 
                        attribute :>> isFinal = false; 
                        attribute :>> isAbstract = false; 
                        attribute :>> isDerived = false; 
                        attribute :>> isPartOfKey = false; 
                        attribute :>> isReadOnly = false; 
                        attribute :>> isStatic = false; 
                        attribute :>> kind = ComponentPortKind::FLOW; 
                        attribute :>> isMaxInclusive = false; 
                        attribute :>> isMinInclusive = false; 
                        attribute :>> isOrdered = false; 
                        attribute :>> orientation = OrientationPortKind::INOUT; 
                        attribute :>> isUnique = false; 
                    }  
                    port 'CP 3' : ComponentPort { 
                        @CapellaID { eid = "9f531793-f820-48ea-8a27-515be1c2846e"; sid = "884da311-ca4d-4149-85ed-4db835f3d325"; } 
                        attribute :>> aggregationKind = AggregationKind::UNSET; 
                        attribute :>> isFinal = false; 
                        attribute :>> isAbstract = false; 
                        attribute :>> isDerived = false; 
                        attribute :>> isPartOfKey = false; 
                        attribute :>> isReadOnly = false; 
                        attribute :>> isStatic = false; 
                        attribute :>> kind = ComponentPortKind::FLOW; 
                        attribute :>> isMaxInclusive = false; 
                        attribute :>> isMinInclusive = false; 
                        attribute :>> isOrdered = false; 
                        attribute :>> orientation = OrientationPortKind::INOUT; 
                        attribute :>> isUnique = false; 
                    }  
                    ref :>> ownedFunctionalAllocation =  ('09409d87-5155-4b39-a367-93d6e0be6e18'); 
                    ref :>> ownedStateMachines =  ('System State Machine'); 
                }  
                part 'Cockpit' : SystemComponent { 
                    @CapellaID { eid = "28b57f81-5a07-471e-a0af-31f86670d19b"; sid = "ca778e63-491b-4487-8510-ef9fd8caaa64"; } 
                    attribute :>> isAbstract = false; 
                    attribute :>> isActor = true; 
                    attribute :>> isDataComponent = false; 
                    attribute :>> isHuman = false; 
                    allocation '03d91b85-bc82-4451-83da-658475460e43' : ComponentFunctionalAllocation
                        allocate function ::> 'System Functions'::'Root System Function'.'Split 14'
                        to component ::> 'Structure'::'Cockpit' { 
                        @CapellaID { eid = "03d91b85-bc82-4451-83da-658475460e43"; sid = "054076f7-c90b-471a-98ce-7f9f838087d8"; } 
                    } 
                    perform 'System Functions'::'Root System Function'.'Split 14' ; 
                    port 'CP 1' : ComponentPort { 
                        @CapellaID { eid = "4feba2dd-e6c2-4a05-a16f-c83e0d2c9c16"; sid = "3afbc786-3bc7-4a65-9472-0c504020cbee"; } 
                        attribute :>> aggregationKind = AggregationKind::UNSET; 
                        attribute :>> isFinal = false; 
                        attribute :>> isAbstract = false; 
                        attribute :>> isDerived = false; 
                        attribute :>> isPartOfKey = false; 
                        attribute :>> isReadOnly = false; 
                        attribute :>> isStatic = false; 
                        attribute :>> kind = ComponentPortKind::FLOW; 
                        attribute :>> isMaxInclusive = false; 
                        attribute :>> isMinInclusive = false; 
                        attribute :>> isOrdered = false; 
                        attribute :>> orientation = OrientationPortKind::INOUT; 
                        attribute :>> isUnique = false; 
                    }  
                    ref :>> ownedFunctionalAllocation =  ('03d91b85-bc82-4451-83da-658475460e43'); 
                }  
                interface '6e2a7a85-12d1-40f6-acef-8ac46072d8a1' : ComponentExchange 
                    connect source ::> 'Braking System'.'CP 1'
                    to  target ::> 'Frame and Suspension'.'CP 1' { 
                    @CapellaID { eid = "6e2a7a85-12d1-40f6-acef-8ac46072d8a1"; sid = "52a44ce1-4e6d-4a56-b03c-b09a24c0354b"; } 
                    attribute :>> kind = ComponentExchangeKind::FLOW; 
                    attribute :>> interfaceName = "Brake to BS"; 
                    attribute :>> isOriented = false; 
                }  
                interface '4b3e7b6f-d13d-4c5a-843c-3e97630b201b' : ComponentExchange 
                    connect source ::> 'Braking System'.'CP 2'
                    to  target ::> 'Cockpit'.'CP 1' { 
                    @CapellaID { eid = "4b3e7b6f-d13d-4c5a-843c-3e97630b201b"; sid = "56c6e9d4-3ac0-4b47-9e11-60cb40960517"; } 
                    attribute :>> kind = ComponentExchangeKind::FLOW; 
                    attribute :>> interfaceName = "BS - C"; 
                    attribute :>> isOriented = false; 
                }  
                interface 'a8864ed5-4d46-4cc6-8719-594d3cf4fe71' : ComponentExchange 
                    connect source ::> 'Braking System'.'CP 3'
                    to  target ::> 'Wheels and Tires'.'CP 1' { 
                    @CapellaID { eid = "a8864ed5-4d46-4cc6-8719-594d3cf4fe71"; sid = "39302ead-3a27-45e4-aa82-ae128c187d8c"; } 
                    attribute :>> kind = ComponentExchangeKind::FLOW; 
                    attribute :>> interfaceName = "BS to W"; 
                    attribute :>> isOriented = false; 
                }  
            } 
            package 'Missions' {
                @PackageMeta {
                    type = "MissionPkg";
                } 
                @CapellaID { eid = "11849d4d-65ef-4a3d-892b-95c173a23011"; } 
            } 
        } 
        package 'Logical Architecture' {
            @PackageMeta {
                type = "LogicalArchitecture";
            } 
            @CapellaID { eid = "531cded4-8fa1-44d7-97d1-cb627cba6fbf"; } 
            package 'Logical Functions' {
                @PackageMeta {
                    type = "LogicalFunctionPkg";
                } 
                @CapellaID { eid = "ee8cc3f8-60b2-43bd-ab49-066cba97cc31"; } 
                action 'Root Logical Function' : LogicalFunction  { 
                    @CapellaID { eid = "7d9a718c-c16b-4683-98f1-3dd9cad826e3"; } 
                    attribute :>> aggregationKind = AggregationKind::UNSET; 
                    attribute :>> isFinal = false; 
                    attribute :>> isAbstract = false; 
                    attribute :>> isDerived = false; 
                    attribute :>> isPartOfKey = false; 
                    attribute :>> isReadOnly = false; 
                    attribute :>> isStatic = false; 
                    attribute :>> kind = FunctionKind::FUNCTION; 
                    attribute :>> isMaxInclusive = false; 
                    attribute :>> isMinInclusive = false; 
                    attribute :>> isOrdered = false; 
                    attribute :>> isUnique = false; 
                    interface '37af32b5-d71f-4c98-a01e-eae18ea38b26' : FunctionalExchange 
                        connect source ::> 'Split 14'.'FOP 2'
                        to target ::> 'Provide Stopping'.'Capture Brake Input'.'FIP 1' { 
                        @CapellaID { eid = "37af32b5-d71f-4c98-a01e-eae18ea38b26"; } 
                        attribute :>> isMulticast = false; 
                        attribute :>> isMultireceive = false; 
                        attribute :>> kindOfRate = RateKind::Unspecified; 
                        attribute :>> interfaceName = "Brake Controls"; 
                         
                    }  
                    interface '3d0e3659-15ef-449e-966b-f382c5be769b' : FunctionalExchange 
                        connect source ::> 'Provide Stopping'.'Gather 17'.'FOP 1'
                        to target ::> 'Transfer Propulson and Stopping Force'.'FIP 2' { 
                        @CapellaID { eid = "3d0e3659-15ef-449e-966b-f382c5be769b"; } 
                        attribute :>> isMulticast = false; 
                        attribute :>> isMultireceive = false; 
                        attribute :>> kindOfRate = RateKind::Unspecified; 
                        attribute :>> interfaceName = "Stopping Forces"; 
                         
                    }  
                    interface 'b685778b-e21d-4e24-8b38-c2d22de73f93' : FunctionalExchange 
                        connect source ::> 'Provide Stopping'.'Report Status to Rider'.'FOP 1'
                        to target ::> 'Observe Status'.'FIP 1' { 
                        @CapellaID { eid = "b685778b-e21d-4e24-8b38-c2d22de73f93"; } 
                        attribute :>> isMulticast = false; 
                        attribute :>> isMultireceive = false; 
                        attribute :>> kindOfRate = RateKind::Unspecified; 
                        attribute :>> interfaceName = "Status of Brakes"; 
                    }  
                    interface '9ffe6e5a-3318-4ed5-a2e9-0e97b25b67f2' : FunctionalExchange 
                        connect source ::> 'Provide Stopping'.'Transmit Data'.'FOP 1'
                        to target ::> 'Monitor Diagnostics'.'FIP 1' { 
                        @CapellaID { eid = "9ffe6e5a-3318-4ed5-a2e9-0e97b25b67f2"; } 
                        attribute :>> isMulticast = false; 
                        attribute :>> isMultireceive = false; 
                        attribute :>> kindOfRate = RateKind::Unspecified; 
                        attribute :>> interfaceName = "Brake Signals"; 
                    }  
                    interface '874e4535-2aaf-45e3-8807-5f327541b7ab' : FunctionalExchange 
                        connect source ::> 'Provide environmental contitions'.'FOP 1'
                        to target ::> 'Receieve Environment'.'FIP 1' { 
                        @CapellaID { eid = "874e4535-2aaf-45e3-8807-5f327541b7ab"; } 
                        attribute :>> isMulticast = false; 
                        attribute :>> isMultireceive = false; 
                        attribute :>> kindOfRate = RateKind::Unspecified; 
                        attribute :>> interfaceName = "Environment"; 
                    }  
                    interface '4cef6ea1-a961-46d6-858d-dce1356b38ec' : FunctionalExchange 
                        connect source ::> 'Provide environmental contitions'.'FOP 2'
                        to target ::> 'Recieve Environment'.'FIP 1' { 
                        @CapellaID { eid = "4cef6ea1-a961-46d6-858d-dce1356b38ec"; } 
                        attribute :>> isMulticast = false; 
                        attribute :>> isMultireceive = false; 
                        attribute :>> kindOfRate = RateKind::Unspecified; 
                        attribute :>> interfaceName = "Environment"; 
                    }  
                    interface '9afd5a1c-f0f6-4b96-8374-98d91f3d5cba' : FunctionalExchange 
                        connect source ::> 'Provide environmental contitions'.'FOP 3'
                        to target ::> 'Receive Environment'.'FIP 1' { 
                        @CapellaID { eid = "9afd5a1c-f0f6-4b96-8374-98d91f3d5cba"; } 
                        attribute :>> isMulticast = false; 
                        attribute :>> isMultireceive = false; 
                        attribute :>> kindOfRate = RateKind::Unspecified; 
                        attribute :>> interfaceName = "Environment"; 
                    }  
                    interface 'b64b1d1c-49a9-42e7-b9f8-396cbc6197ee' : FunctionalExchange 
                        connect source ::> 'Provide environmental contitions'.'FOP 4'
                        to target ::> 'Receive Environment'.'FIP 1' { 
                        @CapellaID { eid = "b64b1d1c-49a9-42e7-b9f8-396cbc6197ee"; } 
                        attribute :>> isMulticast = false; 
                        attribute :>> isMultireceive = false; 
                        attribute :>> kindOfRate = RateKind::Unspecified; 
                        attribute :>> interfaceName = "Environment"; 
                    }  
                    dependency '82655b30-694b-4623-b82e-8a8578075e86'
                        from 'Ride Mountain Trails'::'60424c0f-3513-4e4f-85c3-d6d71f671827'
                        to  'System Analysis'::'System Functions'::'Root System Function'::'Ride Mountain Trails'::'0fb70f28-fdb5-4e62-a014-67929ed8ec94' { 
                        @TransfoLink { 
                            @CapellaID { eid = "82655b30-694b-4623-b82e-8a8578075e86"; } 
                        }  
                    }  
                    dependency 'ec33e338-3cec-41dc-be1b-2be9866e78b6'
                        from 'Ride Mountain Trails'::'ca8144eb-8bb5-4200-af03-1752ed9a4d34'
                        to  'System Analysis'::'System Functions'::'Root System Function'::'Ride Mountain Trails'::'0b54f0a9-b1e3-4514-bc49-2da9e3987434' { 
                        @TransfoLink { 
                            @CapellaID { eid = "ec33e338-3cec-41dc-be1b-2be9866e78b6"; } 
                        }  
                    }  
                    dependency '7cd806b6-992a-4fcb-aae1-a666d79f3d2b'
                        from 'Ride Mountain Trails'::'02a36466-0068-48d8-b1a6-1ca6702ae7f7'
                        to  'System Analysis'::'System Functions'::'Root System Function'::'Ride Mountain Trails'::'036124cd-ac9a-47bf-befd-b9ce4e2ee79b' { 
                        @TransfoLink { 
                            @CapellaID { eid = "7cd806b6-992a-4fcb-aae1-a666d79f3d2b"; } 
                        }  
                    }  
                    dependency '4f445203-25a9-463b-88a1-20467e3e76c9'
                        from 'Ride Mountain Trails'::'a6529817-9c0f-4a7f-a1c6-752e1f8bc2e8'
                        to  'System Analysis'::'System Functions'::'Root System Function'::'Ride Mountain Trails'::'804b80ab-741e-40de-95e1-8b363b6a422d' { 
                        @TransfoLink { 
                            @CapellaID { eid = "4f445203-25a9-463b-88a1-20467e3e76c9"; } 
                        }  
                    }  
                    dependency '3955b509-c683-4405-ab6c-f27ba26fdd43'
                        from 'Ride Mountain Trails'::'ef1a6e13-3492-4eed-8e52-aef02fdeb0a5'
                        to  'System Analysis'::'System Functions'::'Root System Function'::'Ride Mountain Trails'::'54a524f4-55a0-4a1d-9d9a-a1813853e3ca' { 
                        @TransfoLink { 
                            @CapellaID { eid = "3955b509-c683-4405-ab6c-f27ba26fdd43"; } 
                        }  
                    }  
                    dependency 'e1123c5d-1611-43d3-a3bc-3d28bc539865'
                        from 'Stopping Hydaulic'::'1f38bf2e-c11c-4c36-9e5d-b7e402f64cb2'
                        to  'System Analysis'::'System Functions'::'Root System Function'::'Stopping'::'33495806-4d99-44c6-920f-7e6f03340099' { 
                        @TransfoLink { 
                            @CapellaID { eid = "e1123c5d-1611-43d3-a3bc-3d28bc539865"; } 
                        }  
                    }  
                    dependency '4f90b799-39fd-4725-85b3-b331e8b80013'
                        from 'Stopping Hydaulic'::'5dce2f9c-156f-44d1-b81a-699a2cd6eb58'
                        to  'System Analysis'::'System Functions'::'Root System Function'::'Stopping'::'86f31cca-66bc-43cb-abd7-24844218010a' { 
                        @TransfoLink { 
                            @CapellaID { eid = "4f90b799-39fd-4725-85b3-b331e8b80013"; } 
                        }  
                    }  
                    dependency 'c304492d-e1ff-47dd-88e3-9e033beaf195'
                        from 'Stopping Hydaulic'::'d879bb37-63ec-4418-8867-9f50f369fe16'
                        to  'System Analysis'::'System Functions'::'Root System Function'::'Stopping'::'54d2c0ed-83e5-4d2d-b058-92d5b0a456f4' { 
                        @TransfoLink { 
                            @CapellaID { eid = "c304492d-e1ff-47dd-88e3-9e033beaf195"; } 
                        }  
                    }  
                    action 'Stopping Hydaulic' : FunctionalChain  { 
                        @CapellaID { eid = "8facc4c6-5cf3-45e5-9d02-714e72da114b"; } 
                        attribute :>> kind = FunctionalChainKind::SIMPLE; 
                        connection '1f38bf2e-c11c-4c36-9e5d-b7e402f64cb2' : FunctionalChainInvolvementLink 
                            connect source ::> '5dce2f9c-156f-44d1-b81a-699a2cd6eb58'
                            to  target ::> '4ef523d2-2d1e-42e6-8847-2a237f22d4e2' {

                                ref :>> involved = '37af32b5-d71f-4c98-a01e-eae18ea38b26';

                            } 
                        ref action '5dce2f9c-156f-44d1-b81a-699a2cd6eb58' = 'Split 14'; 
                        ref action 'd879bb37-63ec-4418-8867-9f50f369fe16' = 'Transfer Propulson and Stopping Force'; 
                        ref action '4ef523d2-2d1e-42e6-8847-2a237f22d4e2' = 'Provide Stopping'.'Capture Brake Input'; 
                        ref action '0dab00c2-5c45-4ae1-a415-88f937720b64' = 'Provide Stopping'.'Modulate Input Forces'; 
                        connection '2353f9d0-226f-4e61-bb30-ad9d5178d532' : FunctionalChainInvolvementLink 
                            connect source ::> '4ef523d2-2d1e-42e6-8847-2a237f22d4e2'
                            to  target ::> '0dab00c2-5c45-4ae1-a415-88f937720b64' {

                                ref :>> involved = 'Provide Stopping'.'ad0bf977-f80b-4531-908c-15339efe8552';

                            } 
                        ref action '4d7f7aac-c136-4a9b-8c2a-6ebcb87ec455' = 'Provide Stopping'.'Transmit Force'; 
                        connection 'b6a2dbd2-b982-41b0-9004-aa9c8c39fb0e' : FunctionalChainInvolvementLink 
                            connect source ::> '0dab00c2-5c45-4ae1-a415-88f937720b64'
                            to  target ::> '4d7f7aac-c136-4a9b-8c2a-6ebcb87ec455' {

                                ref :>> involved = 'Provide Stopping'.'14e1a944-4f58-4301-b347-680feb5d9bbd';

                            } 
                        ref action 'a9d32215-6de0-419b-9e0f-9094f9efdccf' = 'Provide Stopping'.'Transmit Force '; 
                        connection '6dd33ad9-ffae-4e1c-ac02-7ceb3683d304' : FunctionalChainInvolvementLink 
                            connect source ::> '4d7f7aac-c136-4a9b-8c2a-6ebcb87ec455'
                            to  target ::> 'a9d32215-6de0-419b-9e0f-9094f9efdccf' {

                                ref :>> involved = 'Provide Stopping'.'b5c77a25-2ac1-40c3-8766-5681575540aa';

                            } 
                        ref action 'd6b1c2ff-dcb1-45cf-b459-4adcccb0f697' = 'Provide Stopping'.'Receive Force'; 
                        connection '36269e84-526e-40a4-b573-26fee1a670e6' : FunctionalChainInvolvementLink 
                            connect source ::> 'a9d32215-6de0-419b-9e0f-9094f9efdccf'
                            to  target ::> 'd6b1c2ff-dcb1-45cf-b459-4adcccb0f697' {

                                ref :>> involved = 'Provide Stopping'.'44b4dccd-b0cc-4b66-97a1-6b6f9189e80c';

                            } 
                        ref action 'f65cecec-fe3b-4a33-9d48-0e1cda03713f' = 'Provide Stopping'.'Amplify Force'; 
                        connection 'cdbb0539-30d4-4ad9-9995-8a19d9d593fd' : FunctionalChainInvolvementLink 
                            connect source ::> 'd6b1c2ff-dcb1-45cf-b459-4adcccb0f697'
                            to  target ::> 'f65cecec-fe3b-4a33-9d48-0e1cda03713f' {

                                ref :>> involved = 'Provide Stopping'.'952862ee-52b4-4852-b162-2e5481a0eb9c';

                            } 
                        ref action '22b2703f-debe-4516-9481-296912d036f5' = 'Provide Stopping'.'Position Pads'; 
                        connection 'bfbe5b40-052e-4d71-ad39-3a959cbe8e03' : FunctionalChainInvolvementLink 
                            connect source ::> 'f65cecec-fe3b-4a33-9d48-0e1cda03713f'
                            to  target ::> '22b2703f-debe-4516-9481-296912d036f5' {

                                ref :>> involved = 'Provide Stopping'.'0ee75954-7414-4e5b-8659-163a2c448655';

                            } 
                        ref action 'da3553d3-5c8c-45bd-adbb-45c7fc38b127' = 'Provide Stopping'.'Apply Friction to Rotors'; 
                        connection 'b4c72c5e-f5c3-48c4-bac8-505f4d14fec7' : FunctionalChainInvolvementLink 
                            connect source ::> '22b2703f-debe-4516-9481-296912d036f5'
                            to  target ::> 'da3553d3-5c8c-45bd-adbb-45c7fc38b127' {

                                ref :>> involved = 'Provide Stopping'.'b8ce39f5-1700-4df9-9a4b-2fff8fda47b6';

                            } 
                        ref action '7cc8ce2b-110b-4397-ad0f-d39a3c794910' = 'Provide Stopping'.'Gather 17'; 
                        connection '5418a794-618c-4df8-9082-d818d33c4ffd' : FunctionalChainInvolvementLink 
                            connect source ::> 'da3553d3-5c8c-45bd-adbb-45c7fc38b127'
                            to  target ::> '7cc8ce2b-110b-4397-ad0f-d39a3c794910' {

                                ref :>> involved = 'Provide Stopping'.'52d920ba-e3d0-4dda-821a-20f49ef4aa1b';

                            } 
                        connection '1a511ae4-3b36-4c6e-94dc-cb666ff18727' : FunctionalChainInvolvementLink 
                            connect source ::> '7cc8ce2b-110b-4397-ad0f-d39a3c794910'
                            to  target ::> 'd879bb37-63ec-4418-8867-9f50f369fe16' {

                                ref :>> involved = '3d0e3659-15ef-449e-966b-f382c5be769b';

                            } 
                         
                    }  
                    action 'Powering' : FunctionalChain  { 
                        @CapellaID { eid = "89195cd8-0c3c-418c-834c-1cdaf63b082f"; } 
                        attribute :>> kind = FunctionalChainKind::SIMPLE; 
                         
                    }  
                    action 'Steering' : FunctionalChain  { 
                        @CapellaID { eid = "c4b9d7db-2f4c-4158-83cc-5acce6d1df40"; } 
                        attribute :>> kind = FunctionalChainKind::SIMPLE; 
                         
                    }  
                    action 'Shifting' : FunctionalChain  { 
                        @CapellaID { eid = "428956b2-bec1-4e1c-9396-c7c103d34ea8"; } 
                        attribute :>> kind = FunctionalChainKind::SIMPLE; 
                         
                    }  
                    action 'Ride Mountain Trails' : FunctionalChain  { 
                        @CapellaID { eid = "58baaa55-6cab-4ffc-9d5e-dd063e82a44c"; } 
                        attribute :>> kind = FunctionalChainKind::SIMPLE; 
                        ref action '60424c0f-3513-4e4f-85c3-d6d71f671827' = 'Stopping Hydaulic'; 
                        ref action 'ca8144eb-8bb5-4200-af03-1752ed9a4d34' = 'Powering'; 
                        ref action '02a36466-0068-48d8-b1a6-1ca6702ae7f7' = 'Steering'; 
                        ref action 'a6529817-9c0f-4a7f-a1c6-752e1f8bc2e8' = 'Shifting'; 
                        ref action 'ef1a6e13-3492-4eed-8e52-aef02fdeb0a5' = 'Provide Comfort'; 
                         
                    }  
                    action 'Provide Comfort' : FunctionalChain  { 
                        @CapellaID { eid = "588708f9-057a-42c5-900c-c172877b72aa"; } 
                        attribute :>> kind = FunctionalChainKind::SIMPLE; 
                         
                    }  
                    action 'Provide Stopping' : LogicalFunction  { 
                        @CapellaID { eid = "3725bc68-dba5-4bf3-8173-09a10938eeae"; } 
                        attribute :>> aggregationKind = AggregationKind::UNSET; 
                        attribute :>> isFinal = false; 
                        attribute :>> isAbstract = false; 
                        attribute :>> isDerived = false; 
                        attribute :>> isPartOfKey = false; 
                        attribute :>> isReadOnly = false; 
                        attribute :>> isStatic = false; 
                        attribute :>> kind = FunctionKind::FUNCTION; 
                        attribute :>> isMaxInclusive = false; 
                        attribute :>> isMinInclusive = false; 
                        attribute :>> isOrdered = false; 
                        attribute :>> isUnique = false; 
                        interface 'ad0bf977-f80b-4531-908c-15339efe8552' : FunctionalExchange 
                            connect source ::> 'Capture Brake Input'.'FOP 1'
                            to target ::> 'Modulate Input Forces'.'FIP 1' { 
                            @CapellaID { eid = "ad0bf977-f80b-4531-908c-15339efe8552"; } 
                            attribute :>> isMulticast = false; 
                            attribute :>> isMultireceive = false; 
                            attribute :>> kindOfRate = RateKind::Unspecified; 
                            attribute :>> interfaceName = "Force"; 
                        }  
                        interface '44aa6935-2a9f-4b13-a4e0-18c03ef9867d' : FunctionalExchange 
                            connect source ::> 'Modulate Input Forces'.'FOP 1'
                            to target ::> 'Translate Mechanical Action to Signal'.'FIP 1' { 
                            @CapellaID { eid = "44aa6935-2a9f-4b13-a4e0-18c03ef9867d"; } 
                            attribute :>> isMulticast = false; 
                            attribute :>> isMultireceive = false; 
                            attribute :>> kindOfRate = RateKind::Unspecified; 
                            attribute :>> interfaceName = "Modulated Force"; 
                        }  
                        interface 'ee82a531-56f7-46eb-89cc-0671287b7ae6' : FunctionalExchange 
                            connect source ::> 'Translate Mechanical Action to Signal'.'FOP 1'
                            to target ::> 'Tranmit Signal'.'FIP 1' { 
                            @CapellaID { eid = "ee82a531-56f7-46eb-89cc-0671287b7ae6"; } 
                            attribute :>> isMulticast = false; 
                            attribute :>> isMultireceive = false; 
                            attribute :>> kindOfRate = RateKind::Unspecified; 
                            attribute :>> interfaceName = "Force Signal"; 
                        }  
                        interface '14e1a944-4f58-4301-b347-680feb5d9bbd' : FunctionalExchange 
                            connect source ::> 'Modulate Input Forces'.'FOP 2'
                            to target ::> 'Transmit Force'.'FIP 1' { 
                            @CapellaID { eid = "14e1a944-4f58-4301-b347-680feb5d9bbd"; } 
                            attribute :>> isMulticast = false; 
                            attribute :>> isMultireceive = false; 
                            attribute :>> kindOfRate = RateKind::Unspecified; 
                            attribute :>> interfaceName = "Modulated Force"; 
                        }  
                        interface 'b5c77a25-2ac1-40c3-8766-5681575540aa' : FunctionalExchange 
                            connect source ::> 'Transmit Force'.'FOP 1'
                            to target ::> 'Transmit Force '.'FIP 1' { 
                            @CapellaID { eid = "b5c77a25-2ac1-40c3-8766-5681575540aa"; } 
                            attribute :>> isMulticast = false; 
                            attribute :>> isMultireceive = false; 
                            attribute :>> kindOfRate = RateKind::Unspecified; 
                            attribute :>> interfaceName = "Modulated Force"; 
                        }  
                        interface 'e7844942-9c1b-422b-9e7b-04e103846328' : FunctionalExchange 
                            connect source ::> 'Tranmit Signal'.'FOP 1'
                            to target ::> 'Transmit Signal'.'FIP 1' { 
                            @CapellaID { eid = "e7844942-9c1b-422b-9e7b-04e103846328"; } 
                            attribute :>> isMulticast = false; 
                            attribute :>> isMultireceive = false; 
                            attribute :>> kindOfRate = RateKind::Unspecified; 
                            attribute :>> interfaceName = "Force Signal"; 
                        }  
                        interface '44b4dccd-b0cc-4b66-97a1-6b6f9189e80c' : FunctionalExchange 
                            connect source ::> 'Transmit Force '.'FOP 1'
                            to target ::> 'Receive Force'.'FIP 1' { 
                            @CapellaID { eid = "44b4dccd-b0cc-4b66-97a1-6b6f9189e80c"; } 
                            attribute :>> isMulticast = false; 
                            attribute :>> isMultireceive = false; 
                            attribute :>> kindOfRate = RateKind::Unspecified; 
                            attribute :>> interfaceName = "Modulated Force"; 
                        }  
                        interface '952862ee-52b4-4852-b162-2e5481a0eb9c' : FunctionalExchange 
                            connect source ::> 'Receive Force'.'FOP 1'
                            to target ::> 'Amplify Force'.'FIP 1' { 
                            @CapellaID { eid = "952862ee-52b4-4852-b162-2e5481a0eb9c"; } 
                            attribute :>> isMulticast = false; 
                            attribute :>> isMultireceive = false; 
                            attribute :>> kindOfRate = RateKind::Unspecified; 
                            attribute :>> interfaceName = "Modulated Force"; 
                        }  
                        interface '0ee75954-7414-4e5b-8659-163a2c448655' : FunctionalExchange 
                            connect source ::> 'Amplify Force'.'FOP 1'
                            to target ::> 'Position Pads'.'FIP 1' { 
                            @CapellaID { eid = "0ee75954-7414-4e5b-8659-163a2c448655"; } 
                            attribute :>> isMulticast = false; 
                            attribute :>> isMultireceive = false; 
                            attribute :>> kindOfRate = RateKind::Unspecified; 
                            attribute :>> interfaceName = "Amplified Force"; 
                        }  
                        interface 'b8ce39f5-1700-4df9-9a4b-2fff8fda47b6' : FunctionalExchange 
                            connect source ::> 'Position Pads'.'FOP 1'
                            to target ::> 'Apply Friction to Rotors'.'FIP 1' { 
                            @CapellaID { eid = "b8ce39f5-1700-4df9-9a4b-2fff8fda47b6"; } 
                            attribute :>> isMulticast = false; 
                            attribute :>> isMultireceive = false; 
                            attribute :>> kindOfRate = RateKind::Unspecified; 
                            attribute :>> interfaceName = "Pad Force"; 
                        }  
                        interface 'eaff3864-4c2e-4008-8370-1574e22000c7' : FunctionalExchange 
                            connect source ::> 'Receive Signal'.'FOP 1'
                            to target ::> 'Amplify Force'.'FIP 1' { 
                            @CapellaID { eid = "eaff3864-4c2e-4008-8370-1574e22000c7"; } 
                            attribute :>> isMulticast = false; 
                            attribute :>> isMultireceive = false; 
                            attribute :>> kindOfRate = RateKind::Unspecified; 
                            attribute :>> interfaceName = "Force Signal"; 
                        }  
                        interface '3e6b2a9b-4ab2-4897-9054-2639146b7fc4' : FunctionalExchange 
                            connect source ::> 'Amplify Force'.'FOP 1'
                            to target ::> 'Position Pads'.'FIP 1' { 
                            @CapellaID { eid = "3e6b2a9b-4ab2-4897-9054-2639146b7fc4"; } 
                            attribute :>> isMulticast = false; 
                            attribute :>> isMultireceive = false; 
                            attribute :>> kindOfRate = RateKind::Unspecified; 
                            attribute :>> interfaceName = "Amplified Force"; 
                        }  
                        interface '9b60f9a5-e806-41cf-b6ba-f158ba295bcc' : FunctionalExchange 
                            connect source ::> 'Position Pads'.'FOP 1'
                            to target ::> 'Apply Friction to Rotors'.'FIP 1' { 
                            @CapellaID { eid = "9b60f9a5-e806-41cf-b6ba-f158ba295bcc"; } 
                            attribute :>> isMulticast = false; 
                            attribute :>> isMultireceive = false; 
                            attribute :>> kindOfRate = RateKind::Unspecified; 
                            attribute :>> interfaceName = "Pad Force"; 
                        }  
                        interface '7ab7507b-1ac8-42f4-9c9f-e9fc7bae6da6' : FunctionalExchange 
                            connect source ::> 'Transmit Signal'.'FOP 1'
                            to target ::> 'Receive Signal'.'FIP 1' { 
                            @CapellaID { eid = "7ab7507b-1ac8-42f4-9c9f-e9fc7bae6da6"; } 
                            attribute :>> isMulticast = false; 
                            attribute :>> isMultireceive = false; 
                            attribute :>> kindOfRate = RateKind::Unspecified; 
                            attribute :>> interfaceName = "Force Signal"; 
                        }  
                        interface '52d920ba-e3d0-4dda-821a-20f49ef4aa1b' : FunctionalExchange 
                            connect source ::> 'Apply Friction to Rotors'.'FOP 1'
                            to target ::> 'Gather 17'.'FIP 1' { 
                            @CapellaID { eid = "52d920ba-e3d0-4dda-821a-20f49ef4aa1b"; } 
                            attribute :>> isMulticast = false; 
                            attribute :>> isMultireceive = false; 
                            attribute :>> kindOfRate = RateKind::Unspecified; 
                            attribute :>> interfaceName = "Friction Force"; 
                        }  
                        interface 'bec13766-ed3d-43f4-9837-f52fdb4fd0b3' : FunctionalExchange 
                            connect source ::> 'Apply Friction to Rotors'.'FOP 2'
                            to target ::> 'Gather 17'.'FIP 2' { 
                            @CapellaID { eid = "bec13766-ed3d-43f4-9837-f52fdb4fd0b3"; } 
                            attribute :>> isMulticast = false; 
                            attribute :>> isMultireceive = false; 
                            attribute :>> kindOfRate = RateKind::Unspecified; 
                            attribute :>> interfaceName = "Friction Force"; 
                        }  
                        interface 'cc09c46f-9c73-4e76-b10b-c2c5de01a667' : FunctionalExchange 
                            connect source ::> 'Position Pads'.'FOP 2'
                            to target ::> 'Detect Brake Engagement Level'.'FIP 1' { 
                            @CapellaID { eid = "cc09c46f-9c73-4e76-b10b-c2c5de01a667"; } 
                            attribute :>> isMulticast = false; 
                            attribute :>> isMultireceive = false; 
                            attribute :>> kindOfRate = RateKind::Unspecified; 
                            attribute :>> interfaceName = "Pad Position"; 
                        }  
                        interface '32384939-acdf-4bba-921e-c483a3ea9df7' : FunctionalExchange 
                            connect source ::> 'Detect Brake Engagement Level'.'FOP 1'
                            to target ::> 'Monitor Pad Wear'.'FIP 1' { 
                            @CapellaID { eid = "32384939-acdf-4bba-921e-c483a3ea9df7"; } 
                            attribute :>> isMulticast = false; 
                            attribute :>> isMultireceive = false; 
                            attribute :>> kindOfRate = RateKind::Unspecified; 
                            attribute :>> interfaceName = "Brake Signals"; 
                        }  
                        interface '00f57739-1a15-4508-91d6-b4ac4654bba0' : FunctionalExchange 
                            connect source ::> 'Monitor Pad Wear'.'FOP 1'
                            to target ::> 'Report Status to Rider'.'FIP 1' { 
                            @CapellaID { eid = "00f57739-1a15-4508-91d6-b4ac4654bba0"; } 
                            attribute :>> isMulticast = false; 
                            attribute :>> isMultireceive = false; 
                            attribute :>> kindOfRate = RateKind::Unspecified; 
                            attribute :>> interfaceName = "Pad State"; 
                        }  
                        interface '76488e76-74db-4f7d-930e-83fbe56cdbce' : FunctionalExchange 
                            connect source ::> 'Detect Brake Engagement Level'.'FOP 2'
                            to target ::> 'Transmit Data'.'FIP 1' { 
                            @CapellaID { eid = "76488e76-74db-4f7d-930e-83fbe56cdbce"; } 
                            attribute :>> isMulticast = false; 
                            attribute :>> isMultireceive = false; 
                            attribute :>> kindOfRate = RateKind::Unspecified; 
                            attribute :>> interfaceName = "Brake Signals"; 
                        }  
                        interface '422a42a6-68d8-4352-ae62-beb57cf11e41' : FunctionalExchange 
                            connect source ::> 'Amplify Force'.'FOP 2'
                            to target ::> 'Detect Brake Engagement Level'.'FIP 2' { 
                            @CapellaID { eid = "422a42a6-68d8-4352-ae62-beb57cf11e41"; } 
                            attribute :>> isMulticast = false; 
                            attribute :>> isMultireceive = false; 
                            attribute :>> kindOfRate = RateKind::Unspecified; 
                            attribute :>> interfaceName = "Actuator Signals"; 
                        }  
                        interface 'fe659c09-7014-4e26-a12c-5e971d5794ab' : FunctionalExchange 
                            connect source ::> 'Apply Friction to Rotors'.'FOP 3'
                            to target ::> 'Detect Brake Engagement Level'.'FIP 3' { 
                            @CapellaID { eid = "fe659c09-7014-4e26-a12c-5e971d5794ab"; } 
                            attribute :>> isMulticast = false; 
                            attribute :>> isMultireceive = false; 
                            attribute :>> kindOfRate = RateKind::Unspecified; 
                            attribute :>> interfaceName = "Rotor Spped"; 
                        }  
                        action 'Stopping Electonic ' : FunctionalChain  { 
                            @CapellaID { eid = "0dd88e29-a5b5-44ce-9ba5-6978b1d08a7b"; } 
                            attribute :>> kind = FunctionalChainKind::SIMPLE; 
                            connection 'b70c47a7-b2ba-4dda-898b-5dcc0abc6372' : FunctionalChainInvolvementLink 
                                connect source ::> 'd0efcbe5-f21b-4ccc-b3a9-89c7a615e04a'
                                to  target ::> 'ce876a29-36c7-473d-ba81-58eb321b541c' {

                                    ref :>> involved = '37af32b5-d71f-4c98-a01e-eae18ea38b26';

                                } 
                            ref action 'ce876a29-36c7-473d-ba81-58eb321b541c' = 'Capture Brake Input'; 
                            ref action 'd0efcbe5-f21b-4ccc-b3a9-89c7a615e04a' = 'Split 14'; 
                            connection 'c680e0c4-7010-4430-96cc-df12ab07709d' : FunctionalChainInvolvementLink 
                                connect source ::> 'ce876a29-36c7-473d-ba81-58eb321b541c'
                                to  target ::> '5bf635a3-4cb7-43d8-9100-5f8a0b5cbc1a' {

                                    ref :>> involved = 'ad0bf977-f80b-4531-908c-15339efe8552';

                                } 
                            ref action '5bf635a3-4cb7-43d8-9100-5f8a0b5cbc1a' = 'Modulate Input Forces'; 
                            connection '3c2c7ab3-2d60-40d2-a66f-a6a222b2840c' : FunctionalChainInvolvementLink 
                                connect source ::> '5bf635a3-4cb7-43d8-9100-5f8a0b5cbc1a'
                                to  target ::> 'bee6d2e3-e897-4ee9-9e13-5b06492f95cc' {

                                    ref :>> involved = '44aa6935-2a9f-4b13-a4e0-18c03ef9867d';

                                } 
                            ref action 'bee6d2e3-e897-4ee9-9e13-5b06492f95cc' = 'Translate Mechanical Action to Signal'; 
                            connection '8c8db9c8-ce03-4ec2-a685-3f6a5a4d186b' : FunctionalChainInvolvementLink 
                                connect source ::> 'bee6d2e3-e897-4ee9-9e13-5b06492f95cc'
                                to  target ::> 'd3f31378-c68e-4dd1-af05-c7bc3b919dbd' {

                                    ref :>> involved = 'ee82a531-56f7-46eb-89cc-0671287b7ae6';

                                } 
                            ref action 'd3f31378-c68e-4dd1-af05-c7bc3b919dbd' = 'Tranmit Signal'; 
                            connection 'c9e34454-2372-4d86-a594-08b1af1120e2' : FunctionalChainInvolvementLink 
                                connect source ::> 'd3f31378-c68e-4dd1-af05-c7bc3b919dbd'
                                to  target ::> '97976050-fd6e-4cf7-9f7d-504f3108335d' {

                                    ref :>> involved = 'e7844942-9c1b-422b-9e7b-04e103846328';

                                } 
                            ref action '97976050-fd6e-4cf7-9f7d-504f3108335d' = 'Transmit Signal'; 
                            ref action '70fc0d46-5df5-4fde-b1e3-bbc786757d64' = 'Receive Signal'; 
                            connection 'f0b2d4b6-fe59-4fe9-958e-64ad54889bcc' : FunctionalChainInvolvementLink 
                                connect source ::> '97976050-fd6e-4cf7-9f7d-504f3108335d'
                                to  target ::> '70fc0d46-5df5-4fde-b1e3-bbc786757d64' {

                                    ref :>> involved = '7ab7507b-1ac8-42f4-9c9f-e9fc7bae6da6';

                                } 
                            connection '9f455326-ff11-49dd-8477-fe7cf03bc191' : FunctionalChainInvolvementLink 
                                connect source ::> '70fc0d46-5df5-4fde-b1e3-bbc786757d64'
                                to  target ::> 'aabab2b8-25da-4ebd-bbb0-1ba0a21406b1' {

                                    ref :>> involved = 'eaff3864-4c2e-4008-8370-1574e22000c7';

                                } 
                            ref action 'aabab2b8-25da-4ebd-bbb0-1ba0a21406b1' = 'Amplify Force'; 
                            connection 'a4f6027f-dda0-4773-b64b-a2606fa89fbd' : FunctionalChainInvolvementLink 
                                connect source ::> 'aabab2b8-25da-4ebd-bbb0-1ba0a21406b1'
                                to  target ::> '3cb0746e-a3b4-4c35-89b3-87bbad0d2664' {

                                    ref :>> involved = '3e6b2a9b-4ab2-4897-9054-2639146b7fc4';

                                } 
                            ref action '3cb0746e-a3b4-4c35-89b3-87bbad0d2664' = 'Position Pads'; 
                            connection '03c983f0-8b91-4945-ba08-5fb63b64fa2a' : FunctionalChainInvolvementLink 
                                connect source ::> '3cb0746e-a3b4-4c35-89b3-87bbad0d2664'
                                to  target ::> '3e9edee8-ce09-47bd-a4e3-3c729c5fbc56' {

                                    ref :>> involved = '9b60f9a5-e806-41cf-b6ba-f158ba295bcc';

                                } 
                            ref action '3e9edee8-ce09-47bd-a4e3-3c729c5fbc56' = 'Apply Friction to Rotors'; 
                            connection '9971f8af-2ee7-4515-8744-75967e869e03' : FunctionalChainInvolvementLink 
                                connect source ::> '3e9edee8-ce09-47bd-a4e3-3c729c5fbc56'
                                to  target ::> '68a15418-23c8-48f5-aa80-d81b6fdf373a' {

                                    ref :>> involved = 'bec13766-ed3d-43f4-9837-f52fdb4fd0b3';

                                } 
                            ref action '68a15418-23c8-48f5-aa80-d81b6fdf373a' = 'Gather 17'; 
                            connection '8ea2a45d-2c05-4151-9f4c-ae2b28fb934e' : FunctionalChainInvolvementLink 
                                connect source ::> '68a15418-23c8-48f5-aa80-d81b6fdf373a'
                                to  target ::> 'c4146735-5aa4-418d-af36-6c53ba10612d' {

                                    ref :>> involved = '3d0e3659-15ef-449e-966b-f382c5be769b';

                                } 
                            ref action 'c4146735-5aa4-418d-af36-6c53ba10612d' = 'Transfer Propulson and Stopping Force'; 
                        }  
                        action 'Brake Feedback' : FunctionalChain  { 
                            @CapellaID { eid = "a08e79d4-34dc-442f-9304-cb59da4809ce"; } 
                            attribute :>> kind = FunctionalChainKind::SIMPLE; 
                            connection '9b980fd5-e0f1-4e0a-83e2-a648a7335705' : FunctionalChainInvolvementLink 
                                connect source ::> 'a35b97ed-1fda-4bae-a0e4-ec7c58c622ff'
                                to  target ::> '29c2c6cf-235c-406a-b8e1-642d8d48054b' {

                                    ref :>> involved = '32384939-acdf-4bba-921e-c483a3ea9df7';

                                } 
                            ref action '29c2c6cf-235c-406a-b8e1-642d8d48054b' = 'Monitor Pad Wear'; 
                            ref action 'a35b97ed-1fda-4bae-a0e4-ec7c58c622ff' = 'Detect Brake Engagement Level'; 
                            connection '7bd72d74-5715-4524-ad49-9c4b9bf92ab6' : FunctionalChainInvolvementLink 
                                connect source ::> '29c2c6cf-235c-406a-b8e1-642d8d48054b'
                                to  target ::> '89104da8-6418-4889-87a2-e34492e80948' {

                                    ref :>> involved = '00f57739-1a15-4508-91d6-b4ac4654bba0';

                                } 
                            ref action '89104da8-6418-4889-87a2-e34492e80948' = 'Report Status to Rider'; 
                            connection '6798c9db-a31c-4e0f-9979-d88e697eb304' : FunctionalChainInvolvementLink 
                                connect source ::> '89104da8-6418-4889-87a2-e34492e80948'
                                to  target ::> 'c99b3ed7-1fe8-4a74-a6c5-816a415e3203' {

                                    ref :>> involved = 'b685778b-e21d-4e24-8b38-c2d22de73f93';

                                } 
                            ref action 'c99b3ed7-1fe8-4a74-a6c5-816a415e3203' = 'Observe Status'; 
                        }  
                        action 'Brake Diagnostics' : FunctionalChain  { 
                            @CapellaID { eid = "9f39d006-2907-4c10-a028-53e5b1f8234d"; } 
                            attribute :>> kind = FunctionalChainKind::SIMPLE; 
                            connection '8031acee-ecb9-4dbc-bb62-b36474638173' : FunctionalChainInvolvementLink 
                                connect source ::> 'd8016a60-26df-40b5-be7b-874c3da29db5'
                                to  target ::> '1651c2ba-70c4-433a-ae1e-f8e011f9267e' {

                                    ref :>> involved = '76488e76-74db-4f7d-930e-83fbe56cdbce';

                                } 
                            ref action '1651c2ba-70c4-433a-ae1e-f8e011f9267e' = 'Transmit Data'; 
                            ref action 'd8016a60-26df-40b5-be7b-874c3da29db5' = 'Detect Brake Engagement Level'; 
                            connection 'f2181d1f-8142-4e09-b213-4114761373f6' : FunctionalChainInvolvementLink 
                                connect source ::> '1651c2ba-70c4-433a-ae1e-f8e011f9267e'
                                to  target ::> '1f5b1d73-82e9-47d1-a071-258efd6eb869' {

                                    ref :>> involved = '9ffe6e5a-3318-4ed5-a2e9-0e97b25b67f2';

                                } 
                            ref action '1f5b1d73-82e9-47d1-a071-258efd6eb869' = 'Monitor Diagnostics'; 
                        }  
                        action 'Capture Brake Input' : LogicalFunction  { 
                            doc /*
                            <p>Detect and receive force or movement from rider (e.g., lever pull).</p>

                            */ 
                            @CapellaID { eid = "c29e127e-9625-4318-b037-0883f6697278"; } 
                            attribute :>> aggregationKind = AggregationKind::UNSET; 
                            attribute :>> isFinal = false; 
                            attribute :>> isAbstract = false; 
                            attribute :>> isDerived = false; 
                            attribute :>> isPartOfKey = false; 
                            attribute :>> isReadOnly = false; 
                            attribute :>> isStatic = false; 
                            attribute :>> kind = FunctionKind::FUNCTION; 
                            attribute :>> isMaxInclusive = false; 
                            attribute :>> isMinInclusive = false; 
                            attribute :>> isOrdered = false; 
                            attribute :>> isUnique = false; 
                            in port 'FIP 1' : FunctionInputPort  { 
                                @CapellaID { eid = "de46581e-eba6-4bb9-a1e2-008f6a4f1965"; } 
                                attribute :>> isControl = false; 
                                attribute :>> isControlType = false; 
                                attribute :>> kindOfNode = ObjectNodeKind::Unspecified; 
                                attribute :>> ordering = ObjectNodeOrderingKind::FIFO; 
                                 
                            }  
                            out port 'FOP 1' : FunctionOutputPort  { 
                                @CapellaID { eid = "90b72084-b03f-4cba-9e0e-55e1aa81f849"; } 
                                attribute :>> isControl = false; 
                                attribute :>> isControlType = false; 
                                attribute :>> kindOfNode = ObjectNodeKind::Unspecified; 
                                attribute :>> ordering = ObjectNodeOrderingKind::FIFO; 
                            }  
                            ref :>> inputs =  ('FIP 1'); 
                            ref :>> outputs =  ('FOP 1'); 
                        }  
                        action 'Modulate Input Forces' : LogicalFunction  { 
                            doc /*
                            <p>Allow rider to vary braking intensity (analog or digital modulation).</p>

                            */ 
                            @CapellaID { eid = "144c46b5-e1bc-4fbb-b8d2-228a4543f462"; } 
                            attribute :>> aggregationKind = AggregationKind::UNSET; 
                            attribute :>> isFinal = false; 
                            attribute :>> isAbstract = false; 
                            attribute :>> isDerived = false; 
                            attribute :>> isPartOfKey = false; 
                            attribute :>> isReadOnly = false; 
                            attribute :>> isStatic = false; 
                            attribute :>> kind = FunctionKind::FUNCTION; 
                            attribute :>> isMaxInclusive = false; 
                            attribute :>> isMinInclusive = false; 
                            attribute :>> isOrdered = false; 
                            attribute :>> isUnique = false; 
                            in port 'FIP 1' : FunctionInputPort  { 
                                @CapellaID { eid = "9c574adc-3fc2-4ded-ae72-c6fbd764a265"; } 
                                attribute :>> isControl = false; 
                                attribute :>> isControlType = false; 
                                attribute :>> kindOfNode = ObjectNodeKind::Unspecified; 
                                attribute :>> ordering = ObjectNodeOrderingKind::FIFO; 
                            }  
                            out port 'FOP 1' : FunctionOutputPort  { 
                                @CapellaID { eid = "e452bff1-a8eb-449e-9196-3bae1642c1ac"; } 
                                attribute :>> isControl = false; 
                                attribute :>> isControlType = false; 
                                attribute :>> kindOfNode = ObjectNodeKind::Unspecified; 
                                attribute :>> ordering = ObjectNodeOrderingKind::FIFO; 
                            }  
                            out port 'FOP 2' : FunctionOutputPort  { 
                                @CapellaID { eid = "194f2d83-01e3-4249-bec4-d2b673e34166"; } 
                                attribute :>> isControl = false; 
                                attribute :>> isControlType = false; 
                                attribute :>> kindOfNode = ObjectNodeKind::Unspecified; 
                                attribute :>> ordering = ObjectNodeOrderingKind::FIFO; 
                            }  
                            ref :>> inputs =  ('FIP 1'); 
                            ref :>> outputs =  ('FOP 1',
                            'FOP 2'); 
                        }  
                        action 'Translate Mechanical Action to Signal' : LogicalFunction  { 
                            doc /*
                            <p>Convert physical movement into a control signal.</p>

                            */ 
                            @CapellaID { eid = "2ef6bfef-7cb8-4e60-8173-26c5bc80773d"; } 
                            attribute :>> aggregationKind = AggregationKind::UNSET; 
                            attribute :>> isFinal = false; 
                            attribute :>> isAbstract = false; 
                            attribute :>> isDerived = false; 
                            attribute :>> isPartOfKey = false; 
                            attribute :>> isReadOnly = false; 
                            attribute :>> isStatic = false; 
                            attribute :>> kind = FunctionKind::FUNCTION; 
                            attribute :>> isMaxInclusive = false; 
                            attribute :>> isMinInclusive = false; 
                            attribute :>> isOrdered = false; 
                            attribute :>> isUnique = false; 
                            in port 'FIP 1' : FunctionInputPort  { 
                                @CapellaID { eid = "d38378ff-1068-44e8-9879-12d409061419"; } 
                                attribute :>> isControl = false; 
                                attribute :>> isControlType = false; 
                                attribute :>> kindOfNode = ObjectNodeKind::Unspecified; 
                                attribute :>> ordering = ObjectNodeOrderingKind::FIFO; 
                            }  
                            out port 'FOP 1' : FunctionOutputPort  { 
                                @CapellaID { eid = "e9cd2d0f-4384-4c31-8041-a6927a269c37"; } 
                                attribute :>> isControl = false; 
                                attribute :>> isControlType = false; 
                                attribute :>> kindOfNode = ObjectNodeKind::Unspecified; 
                                attribute :>> ordering = ObjectNodeOrderingKind::FIFO; 
                            }  
                            ref :>> inputs =  ('FIP 1'); 
                            ref :>> outputs =  ('FOP 1'); 
                        }  
                        action 'Tranmit Signal' : LogicalFunction  { 
                            doc /*
                            <p>&nbsp;Pass force or signal downstream.</p>

                            */ 
                            @CapellaID { eid = "b3530204-bc1e-40dc-9a9e-ad653b11d728"; } 
                            attribute :>> aggregationKind = AggregationKind::UNSET; 
                            attribute :>> isFinal = false; 
                            attribute :>> isAbstract = false; 
                            attribute :>> isDerived = false; 
                            attribute :>> isPartOfKey = false; 
                            attribute :>> isReadOnly = false; 
                            attribute :>> isStatic = false; 
                            attribute :>> kind = FunctionKind::FUNCTION; 
                            attribute :>> isMaxInclusive = false; 
                            attribute :>> isMinInclusive = false; 
                            attribute :>> isOrdered = false; 
                            attribute :>> isUnique = false; 
                            in port 'FIP 1' : FunctionInputPort  { 
                                @CapellaID { eid = "c9e3200f-a4fb-4d60-b6e1-a4da135a23b7"; } 
                                attribute :>> isControl = false; 
                                attribute :>> isControlType = false; 
                                attribute :>> kindOfNode = ObjectNodeKind::Unspecified; 
                                attribute :>> ordering = ObjectNodeOrderingKind::FIFO; 
                            }  
                            out port 'FOP 1' : FunctionOutputPort  { 
                                @CapellaID { eid = "1382e037-26b2-41d2-aeff-b154918114df"; } 
                                attribute :>> isControl = false; 
                                attribute :>> isControlType = false; 
                                attribute :>> kindOfNode = ObjectNodeKind::Unspecified; 
                                attribute :>> ordering = ObjectNodeOrderingKind::FIFO; 
                            }  
                            ref :>> inputs =  ('FIP 1'); 
                            ref :>> outputs =  ('FOP 1'); 
                        }  
                        action 'Transmit Force' : LogicalFunction  { 
                            @CapellaID { eid = "25305d67-d41c-41e5-b325-e4e104adb40a"; } 
                            attribute :>> aggregationKind = AggregationKind::UNSET; 
                            attribute :>> isFinal = false; 
                            attribute :>> isAbstract = false; 
                            attribute :>> isDerived = false; 
                            attribute :>> isPartOfKey = false; 
                            attribute :>> isReadOnly = false; 
                            attribute :>> isStatic = false; 
                            attribute :>> kind = FunctionKind::FUNCTION; 
                            attribute :>> isMaxInclusive = false; 
                            attribute :>> isMinInclusive = false; 
                            attribute :>> isOrdered = false; 
                            attribute :>> isUnique = false; 
                            in port 'FIP 1' : FunctionInputPort  { 
                                @CapellaID { eid = "3366743a-5484-4198-bfbd-9f88a4f7916a"; } 
                                attribute :>> isControl = false; 
                                attribute :>> isControlType = false; 
                                attribute :>> kindOfNode = ObjectNodeKind::Unspecified; 
                                attribute :>> ordering = ObjectNodeOrderingKind::FIFO; 
                            }  
                            out port 'FOP 1' : FunctionOutputPort  { 
                                @CapellaID { eid = "36568ceb-368a-4940-814c-9e2c006ab1c9"; } 
                                attribute :>> isControl = false; 
                                attribute :>> isControlType = false; 
                                attribute :>> kindOfNode = ObjectNodeKind::Unspecified; 
                                attribute :>> ordering = ObjectNodeOrderingKind::FIFO; 
                            }  
                            ref :>> inputs =  ('FIP 1'); 
                            ref :>> outputs =  ('FOP 1'); 
                        }  
                        action 'Transmit Force ' : LogicalFunction  { 
                            doc /*
                            <p>Carry control input from the control subsystem to the actuation subsystem.</p>

                            */ 
                            @CapellaID { eid = "09cf17da-7b7a-4544-8e1f-40db4ab5b364"; } 
                            attribute :>> aggregationKind = AggregationKind::UNSET; 
                            attribute :>> isFinal = false; 
                            attribute :>> isAbstract = false; 
                            attribute :>> isDerived = false; 
                            attribute :>> isPartOfKey = false; 
                            attribute :>> isReadOnly = false; 
                            attribute :>> isStatic = false; 
                            attribute :>> kind = FunctionKind::FUNCTION; 
                            attribute :>> isMaxInclusive = false; 
                            attribute :>> isMinInclusive = false; 
                            attribute :>> isOrdered = false; 
                            attribute :>> isUnique = false; 
                            constraint 'Absorb Vibration or Back Pressure' : CapellaConstraint { 
                                language "capella:linkedText" /*  */
                                @CapellaID { eid = "db561812-85b0-4418-ac7c-c832c40a8bff"; }
                                
                                ref :>> constrainedElements =  ('Bike BrakeSystem Library Library'::'Bike BrakeSystem Library'::'Logical Architecture'::'Logical Functions'::'Root Logical Function'.'Provide Stopping'.'Transmit Force ',
                                'Transmit Signal');
                            } 
                            in port 'FIP 1' : FunctionInputPort  { 
                                @CapellaID { eid = "8839c271-960d-4141-9d0e-9f931287b3ee"; } 
                                attribute :>> isControl = false; 
                                attribute :>> isControlType = false; 
                                attribute :>> kindOfNode = ObjectNodeKind::Unspecified; 
                                attribute :>> ordering = ObjectNodeOrderingKind::FIFO; 
                            }  
                            out port 'FOP 1' : FunctionOutputPort  { 
                                @CapellaID { eid = "804d12a4-c890-4422-94b8-1a76da8c051e"; } 
                                attribute :>> isControl = false; 
                                attribute :>> isControlType = false; 
                                attribute :>> kindOfNode = ObjectNodeKind::Unspecified; 
                                attribute :>> ordering = ObjectNodeOrderingKind::FIFO; 
                            }  
                            ref :>> ownedConstraints =  ('Absorb Vibration or Back Pressure'); 
                            ref :>> inputs =  ('FIP 1'); 
                            ref :>> outputs =  ('FOP 1'); 
                        }  
                        action 'Transmit Signal' : LogicalFunction  { 
                            doc /*
                            <p>Carry control input from the control subsystem to the actuation subsystem.</p>

                            */ 
                            @CapellaID { eid = "4f770753-b38a-4bca-8a98-734d471087c5"; } 
                            attribute :>> aggregationKind = AggregationKind::UNSET; 
                            attribute :>> isFinal = false; 
                            attribute :>> isAbstract = false; 
                            attribute :>> isDerived = false; 
                            attribute :>> isPartOfKey = false; 
                            attribute :>> isReadOnly = false; 
                            attribute :>> isStatic = false; 
                            attribute :>> kind = FunctionKind::FUNCTION; 
                            attribute :>> isMaxInclusive = false; 
                            attribute :>> isMinInclusive = false; 
                            attribute :>> isOrdered = false; 
                            attribute :>> isUnique = false; 
                            constraint 'Preserve Modulation Fidelity' : CapellaConstraint { 
                                language "capella:linkedText" /*  */
                                @CapellaID { eid = "481bba6b-8c5c-447d-b2a3-3578916a9a0c"; }
                                
                                ref :>> constrainedElements =  ('Bike BrakeSystem Library Library'::'Bike BrakeSystem Library'::'Logical Architecture'::'Logical Functions'::'Root Logical Function'.'Provide Stopping'.'Transmit Signal',
                                'Transmit Force ');
                            } 
                            in port 'FIP 1' : FunctionInputPort  { 
                                @CapellaID { eid = "3d1f0747-3e57-4243-98b1-50d67286614d"; } 
                                attribute :>> isControl = false; 
                                attribute :>> isControlType = false; 
                                attribute :>> kindOfNode = ObjectNodeKind::Unspecified; 
                                attribute :>> ordering = ObjectNodeOrderingKind::FIFO; 
                            }  
                            out port 'FOP 1' : FunctionOutputPort  { 
                                @CapellaID { eid = "1610f4f9-2b2f-44fc-937e-cd983b2f8f67"; } 
                                attribute :>> isControl = false; 
                                attribute :>> isControlType = false; 
                                attribute :>> kindOfNode = ObjectNodeKind::Unspecified; 
                                attribute :>> ordering = ObjectNodeOrderingKind::FIFO; 
                            }  
                            ref :>> ownedConstraints =  ('Preserve Modulation Fidelity'); 
                            ref :>> inputs =  ('FIP 1'); 
                            ref :>> outputs =  ('FOP 1'); 
                        }  
                        action 'Receive Force' : LogicalFunction  { 
                            @CapellaID { eid = "e790138b-52d8-478b-acab-f0490c9b805f"; } 
                            attribute :>> aggregationKind = AggregationKind::UNSET; 
                            attribute :>> isFinal = false; 
                            attribute :>> isAbstract = false; 
                            attribute :>> isDerived = false; 
                            attribute :>> isPartOfKey = false; 
                            attribute :>> isReadOnly = false; 
                            attribute :>> isStatic = false; 
                            attribute :>> kind = FunctionKind::FUNCTION; 
                            attribute :>> isMaxInclusive = false; 
                            attribute :>> isMinInclusive = false; 
                            attribute :>> isOrdered = false; 
                            attribute :>> isUnique = false; 
                            in port 'FIP 1' : FunctionInputPort  { 
                                @CapellaID { eid = "fcef8d5a-2934-4def-8df1-15faaec73f28"; } 
                                attribute :>> isControl = false; 
                                attribute :>> isControlType = false; 
                                attribute :>> kindOfNode = ObjectNodeKind::Unspecified; 
                                attribute :>> ordering = ObjectNodeOrderingKind::FIFO; 
                            }  
                            out port 'FOP 1' : FunctionOutputPort  { 
                                @CapellaID { eid = "01984823-dbb1-4390-8e70-71bcb854b6dd"; } 
                                attribute :>> isControl = false; 
                                attribute :>> isControlType = false; 
                                attribute :>> kindOfNode = ObjectNodeKind::Unspecified; 
                                attribute :>> ordering = ObjectNodeOrderingKind::FIFO; 
                            }  
                            ref :>> inputs =  ('FIP 1'); 
                            ref :>> outputs =  ('FOP 1'); 
                        }  
                        action 'Receive Signal' : LogicalFunction  { 
                            @CapellaID { eid = "b3eff3cd-727d-40b8-89e9-df361607e117"; } 
                            attribute :>> aggregationKind = AggregationKind::UNSET; 
                            attribute :>> isFinal = false; 
                            attribute :>> isAbstract = false; 
                            attribute :>> isDerived = false; 
                            attribute :>> isPartOfKey = false; 
                            attribute :>> isReadOnly = false; 
                            attribute :>> isStatic = false; 
                            attribute :>> kind = FunctionKind::FUNCTION; 
                            attribute :>> isMaxInclusive = false; 
                            attribute :>> isMinInclusive = false; 
                            attribute :>> isOrdered = false; 
                            attribute :>> isUnique = false; 
                            in port 'FIP 1' : FunctionInputPort  { 
                                @CapellaID { eid = "aaea983d-268f-456a-b2ff-80521aecb55e"; } 
                                attribute :>> isControl = false; 
                                attribute :>> isControlType = false; 
                                attribute :>> kindOfNode = ObjectNodeKind::Unspecified; 
                                attribute :>> ordering = ObjectNodeOrderingKind::FIFO; 
                            }  
                            out port 'FOP 1' : FunctionOutputPort  { 
                                @CapellaID { eid = "6ede759c-f110-4cf3-b56d-abcd79f2dea3"; } 
                                attribute :>> isControl = false; 
                                attribute :>> isControlType = false; 
                                attribute :>> kindOfNode = ObjectNodeKind::Unspecified; 
                                attribute :>> ordering = ObjectNodeOrderingKind::FIFO; 
                            }  
                            ref :>> inputs =  ('FIP 1'); 
                            ref :>> outputs =  ('FOP 1'); 
                        }  
                        action 'Position Pads' : LogicalFunction  { 
                            @CapellaID { eid = "91035664-4d61-4a17-9110-3cfa8629edb5"; } 
                            attribute :>> aggregationKind = AggregationKind::UNSET; 
                            attribute :>> isFinal = false; 
                            attribute :>> isAbstract = false; 
                            attribute :>> isDerived = false; 
                            attribute :>> isPartOfKey = false; 
                            attribute :>> isReadOnly = false; 
                            attribute :>> isStatic = false; 
                            attribute :>> kind = FunctionKind::FUNCTION; 
                            attribute :>> isMaxInclusive = false; 
                            attribute :>> isMinInclusive = false; 
                            attribute :>> isOrdered = false; 
                            attribute :>> isUnique = false; 
                            in port 'FIP 1' : FunctionInputPort  { 
                                @CapellaID { eid = "e3c26c95-fb7d-4e71-81b7-46b841e8ed97"; } 
                                attribute :>> isControl = false; 
                                attribute :>> isControlType = false; 
                                attribute :>> kindOfNode = ObjectNodeKind::Unspecified; 
                                attribute :>> ordering = ObjectNodeOrderingKind::FIFO; 
                            }  
                            out port 'FOP 1' : FunctionOutputPort  { 
                                @CapellaID { eid = "92d48acf-3bcc-4970-8a86-37c2aecf783a"; } 
                                attribute :>> isControl = false; 
                                attribute :>> isControlType = false; 
                                attribute :>> kindOfNode = ObjectNodeKind::Unspecified; 
                                attribute :>> ordering = ObjectNodeOrderingKind::FIFO; 
                            }  
                            out port 'FOP 2' : FunctionOutputPort  { 
                                @CapellaID { eid = "eb56db5b-7647-4f7f-a7dd-eafc0d8bfa7a"; } 
                                attribute :>> isControl = false; 
                                attribute :>> isControlType = false; 
                                attribute :>> kindOfNode = ObjectNodeKind::Unspecified; 
                                attribute :>> ordering = ObjectNodeOrderingKind::FIFO; 
                            }  
                            ref :>> inputs =  ('FIP 1'); 
                            ref :>> outputs =  ('FOP 1',
                            'FOP 2'); 
                        }  
                        action 'Amplify Force' : LogicalFunction  { 
                            doc /*
                            <p>Mechanical Lever Amplifies Force</p>

                            */ 
                            @CapellaID { eid = "a314785c-c476-4e13-86d9-993e10a950af"; } 
                            attribute :>> aggregationKind = AggregationKind::UNSET; 
                            attribute :>> isFinal = false; 
                            attribute :>> isAbstract = false; 
                            attribute :>> isDerived = false; 
                            attribute :>> isPartOfKey = false; 
                            attribute :>> isReadOnly = false; 
                            attribute :>> isStatic = false; 
                            attribute :>> kind = FunctionKind::FUNCTION; 
                            attribute :>> isMaxInclusive = false; 
                            attribute :>> isMinInclusive = false; 
                            attribute :>> isOrdered = false; 
                            attribute :>> isUnique = false; 
                            in port 'FIP 1' : FunctionInputPort  { 
                                @CapellaID { eid = "46d33971-146b-41a3-b7dd-875954868d00"; } 
                                attribute :>> isControl = false; 
                                attribute :>> isControlType = false; 
                                attribute :>> kindOfNode = ObjectNodeKind::Unspecified; 
                                attribute :>> ordering = ObjectNodeOrderingKind::FIFO; 
                            }  
                            out port 'FOP 1' : FunctionOutputPort  { 
                                @CapellaID { eid = "341a3f12-6ba7-4d6a-b582-fb46eda7e97e"; } 
                                attribute :>> isControl = false; 
                                attribute :>> isControlType = false; 
                                attribute :>> kindOfNode = ObjectNodeKind::Unspecified; 
                                attribute :>> ordering = ObjectNodeOrderingKind::FIFO; 
                            }  
                            ref :>> inputs =  ('FIP 1'); 
                            ref :>> outputs =  ('FOP 1'); 
                        }  
                        action 'Amplify Force' : LogicalFunction  { 
                            doc /*
                            <p>hydraulic pressure pushes pistons.</p>

                            */ 
                            @CapellaID { eid = "2b9b6521-aada-43fa-903e-48b7386d0c8f"; } 
                            attribute :>> aggregationKind = AggregationKind::UNSET; 
                            attribute :>> isFinal = false; 
                            attribute :>> isAbstract = false; 
                            attribute :>> isDerived = false; 
                            attribute :>> isPartOfKey = false; 
                            attribute :>> isReadOnly = false; 
                            attribute :>> isStatic = false; 
                            attribute :>> kind = FunctionKind::FUNCTION; 
                            attribute :>> isMaxInclusive = false; 
                            attribute :>> isMinInclusive = false; 
                            attribute :>> isOrdered = false; 
                            attribute :>> isUnique = false; 
                            in port 'FIP 1' : FunctionInputPort  { 
                                @CapellaID { eid = "493d0d09-a99f-406b-8a33-dd8ed7e65a82"; } 
                                attribute :>> isControl = false; 
                                attribute :>> isControlType = false; 
                                attribute :>> kindOfNode = ObjectNodeKind::Unspecified; 
                                attribute :>> ordering = ObjectNodeOrderingKind::FIFO; 
                            }  
                            out port 'FOP 1' : FunctionOutputPort  { 
                                @CapellaID { eid = "1867f2a5-c5bf-4b50-b7b3-b7f870d82618"; } 
                                attribute :>> isControl = false; 
                                attribute :>> isControlType = false; 
                                attribute :>> kindOfNode = ObjectNodeKind::Unspecified; 
                                attribute :>> ordering = ObjectNodeOrderingKind::FIFO; 
                            }  
                            out port 'FOP 2' : FunctionOutputPort  { 
                                @CapellaID { eid = "b8466679-2a5c-4cc0-aaf4-e4830880b71a"; } 
                                attribute :>> isControl = false; 
                                attribute :>> isControlType = false; 
                                attribute :>> kindOfNode = ObjectNodeKind::Unspecified; 
                                attribute :>> ordering = ObjectNodeOrderingKind::FIFO; 
                            }  
                            ref :>> inputs =  ('FIP 1'); 
                            ref :>> outputs =  ('FOP 1',
                            'FOP 2'); 
                        }  
                        action 'Position Pads' : LogicalFunction  { 
                            @CapellaID { eid = "c6c9a844-708c-4993-8fdd-fa913d6ae163"; } 
                            attribute :>> aggregationKind = AggregationKind::UNSET; 
                            attribute :>> isFinal = false; 
                            attribute :>> isAbstract = false; 
                            attribute :>> isDerived = false; 
                            attribute :>> isPartOfKey = false; 
                            attribute :>> isReadOnly = false; 
                            attribute :>> isStatic = false; 
                            attribute :>> kind = FunctionKind::FUNCTION; 
                            attribute :>> isMaxInclusive = false; 
                            attribute :>> isMinInclusive = false; 
                            attribute :>> isOrdered = false; 
                            attribute :>> isUnique = false; 
                            constraint 'Return Pads After Force Removed.' : CapellaConstraint { 
                                language "capella:linkedText" /*  */
                                @CapellaID { eid = "3dc888ef-ecaa-4b27-9261-b112a67867e7"; }
                                
                                ref :>> constrainedElements =  ('Bike BrakeSystem Library Library'::'Bike BrakeSystem Library'::'Logical Architecture'::'Logical Functions'::'Root Logical Function'.'Provide Stopping'.'Position Pads',
                                'Bike BrakeSystem Library Library'::'Bike BrakeSystem Library'::'Logical Architecture'::'Logical Functions'::'Root Logical Function'.'Provide Stopping'.'Position Pads');
                            } 
                            in port 'FIP 1' : FunctionInputPort  { 
                                @CapellaID { eid = "9188fcef-a189-40b8-be0e-0df846d4dd3a"; } 
                                attribute :>> isControl = false; 
                                attribute :>> isControlType = false; 
                                attribute :>> kindOfNode = ObjectNodeKind::Unspecified; 
                                attribute :>> ordering = ObjectNodeOrderingKind::FIFO; 
                            }  
                            out port 'FOP 1' : FunctionOutputPort  { 
                                @CapellaID { eid = "a41cb79f-9f84-4a03-956f-d19382b86038"; } 
                                attribute :>> isControl = false; 
                                attribute :>> isControlType = false; 
                                attribute :>> kindOfNode = ObjectNodeKind::Unspecified; 
                                attribute :>> ordering = ObjectNodeOrderingKind::FIFO; 
                            }  
                            ref :>> ownedConstraints =  ('Return Pads After Force Removed.'); 
                            ref :>> inputs =  ('FIP 1'); 
                            ref :>> outputs =  ('FOP 1'); 
                        }  
                        action 'Apply Friction to Rotors' : LogicalFunction  { 
                            @CapellaID { eid = "f85d00fa-f95f-4329-b579-a36833a55abe"; } 
                            attribute :>> aggregationKind = AggregationKind::UNSET; 
                            attribute :>> isFinal = false; 
                            attribute :>> isAbstract = false; 
                            attribute :>> isDerived = false; 
                            attribute :>> isPartOfKey = false; 
                            attribute :>> isReadOnly = false; 
                            attribute :>> isStatic = false; 
                            attribute :>> kind = FunctionKind::FUNCTION; 
                            attribute :>> isMaxInclusive = false; 
                            attribute :>> isMinInclusive = false; 
                            attribute :>> isOrdered = false; 
                            attribute :>> isUnique = false; 
                            in port 'FIP 1' : FunctionInputPort  { 
                                @CapellaID { eid = "bfc21ce6-7062-48eb-926f-e1b42cc4998d"; } 
                                attribute :>> isControl = false; 
                                attribute :>> isControlType = false; 
                                attribute :>> kindOfNode = ObjectNodeKind::Unspecified; 
                                attribute :>> ordering = ObjectNodeOrderingKind::FIFO; 
                            }  
                            out port 'FOP 1' : FunctionOutputPort  { 
                                @CapellaID { eid = "e07ab429-ad52-42e0-b436-aa6b0bdc4747"; } 
                                attribute :>> isControl = false; 
                                attribute :>> isControlType = false; 
                                attribute :>> kindOfNode = ObjectNodeKind::Unspecified; 
                                attribute :>> ordering = ObjectNodeOrderingKind::FIFO; 
                            }  
                            ref :>> inputs =  ('FIP 1'); 
                            ref :>> outputs =  ('FOP 1'); 
                        }  
                        action 'Apply Friction to Rotors' : LogicalFunction  { 
                            @CapellaID { eid = "14cf06c0-f827-42f6-ac8c-f2368211492b"; } 
                            attribute :>> aggregationKind = AggregationKind::UNSET; 
                            attribute :>> isFinal = false; 
                            attribute :>> isAbstract = false; 
                            attribute :>> isDerived = false; 
                            attribute :>> isPartOfKey = false; 
                            attribute :>> isReadOnly = false; 
                            attribute :>> isStatic = false; 
                            attribute :>> kind = FunctionKind::FUNCTION; 
                            attribute :>> isMaxInclusive = false; 
                            attribute :>> isMinInclusive = false; 
                            attribute :>> isOrdered = false; 
                            attribute :>> isUnique = false; 
                            in port 'FIP 1' : FunctionInputPort  { 
                                @CapellaID { eid = "c8fc80ce-714f-466e-8297-7d530c4cf9ee"; } 
                                attribute :>> isControl = false; 
                                attribute :>> isControlType = false; 
                                attribute :>> kindOfNode = ObjectNodeKind::Unspecified; 
                                attribute :>> ordering = ObjectNodeOrderingKind::FIFO; 
                            }  
                            out port 'FOP 2' : FunctionOutputPort  { 
                                @CapellaID { eid = "67f8d280-82f2-4a5a-8a15-78af8516b198"; } 
                                attribute :>> isControl = false; 
                                attribute :>> isControlType = false; 
                                attribute :>> kindOfNode = ObjectNodeKind::Unspecified; 
                                attribute :>> ordering = ObjectNodeOrderingKind::FIFO; 
                            }  
                            out port 'FOP 3' : FunctionOutputPort  { 
                                @CapellaID { eid = "5da3016c-5de4-487f-acd3-c937a1f65e61"; } 
                                attribute :>> isControl = false; 
                                attribute :>> isControlType = false; 
                                attribute :>> kindOfNode = ObjectNodeKind::Unspecified; 
                                attribute :>> ordering = ObjectNodeOrderingKind::FIFO; 
                            }  
                            ref :>> inputs =  ('FIP 1'); 
                            ref :>> outputs =  ('FOP 2',
                            'FOP 3'); 
                        }  
                        action 'Gather 17' : LogicalFunction  { 
                            @CapellaID { eid = "f6555a7c-5dea-48b3-ae0b-5bb333bdd200"; } 
                            attribute :>> aggregationKind = AggregationKind::UNSET; 
                            attribute :>> isFinal = false; 
                            attribute :>> isAbstract = false; 
                            attribute :>> isDerived = false; 
                            attribute :>> isPartOfKey = false; 
                            attribute :>> isReadOnly = false; 
                            attribute :>> isStatic = false; 
                            attribute :>> kind = FunctionKind::GATHER; 
                            attribute :>> isMaxInclusive = false; 
                            attribute :>> isMinInclusive = false; 
                            attribute :>> isOrdered = false; 
                            attribute :>> isUnique = false; 
                            in port 'FIP 1' : FunctionInputPort  { 
                                @CapellaID { eid = "12d838f2-81ec-4710-b1a8-888d2ff15449"; } 
                                attribute :>> isControl = false; 
                                attribute :>> isControlType = false; 
                                attribute :>> kindOfNode = ObjectNodeKind::Unspecified; 
                                attribute :>> ordering = ObjectNodeOrderingKind::FIFO; 
                            }  
                            in port 'FIP 2' : FunctionInputPort  { 
                                @CapellaID { eid = "cd758ad6-6fce-4b36-8c4e-f45f26ea8e4e"; } 
                                attribute :>> isControl = false; 
                                attribute :>> isControlType = false; 
                                attribute :>> kindOfNode = ObjectNodeKind::Unspecified; 
                                attribute :>> ordering = ObjectNodeOrderingKind::FIFO; 
                            }  
                            out port 'FOP 1' : FunctionOutputPort  { 
                                @CapellaID { eid = "8c98bd89-dc64-4f33-b01e-dc6404b96f6d"; } 
                                attribute :>> isControl = false; 
                                attribute :>> isControlType = false; 
                                attribute :>> kindOfNode = ObjectNodeKind::Unspecified; 
                                attribute :>> ordering = ObjectNodeOrderingKind::FIFO; 
                                 
                            }  
                            ref :>> inputs =  ('FIP 1',
                            'FIP 2'); 
                            ref :>> outputs =  ('FOP 1'); 
                        }  
                        action 'Detect Brake Engagement Level' : LogicalFunction  { 
                            @CapellaID { eid = "fae5a1b9-e0b3-415b-8737-a1e47afc2d81"; } 
                            attribute :>> aggregationKind = AggregationKind::UNSET; 
                            attribute :>> isFinal = false; 
                            attribute :>> isAbstract = false; 
                            attribute :>> isDerived = false; 
                            attribute :>> isPartOfKey = false; 
                            attribute :>> isReadOnly = false; 
                            attribute :>> isStatic = false; 
                            attribute :>> kind = FunctionKind::FUNCTION; 
                            attribute :>> isMaxInclusive = false; 
                            attribute :>> isMinInclusive = false; 
                            attribute :>> isOrdered = false; 
                            attribute :>> isUnique = false; 
                            in port 'FIP 1' : FunctionInputPort  { 
                                @CapellaID { eid = "bb8a4a5a-c8e7-46f9-a423-365a8cc6640b"; } 
                                attribute :>> isControl = false; 
                                attribute :>> isControlType = false; 
                                attribute :>> kindOfNode = ObjectNodeKind::Unspecified; 
                                attribute :>> ordering = ObjectNodeOrderingKind::FIFO; 
                            }  
                            in port 'FIP 2' : FunctionInputPort  { 
                                @CapellaID { eid = "b88a7da8-9942-46a1-9fc0-d9dc84cc6d2c"; } 
                                attribute :>> isControl = false; 
                                attribute :>> isControlType = false; 
                                attribute :>> kindOfNode = ObjectNodeKind::Unspecified; 
                                attribute :>> ordering = ObjectNodeOrderingKind::FIFO; 
                            }  
                            in port 'FIP 3' : FunctionInputPort  { 
                                @CapellaID { eid = "6a4b48a0-dffc-4d56-8356-d4666ac83181"; } 
                                attribute :>> isControl = false; 
                                attribute :>> isControlType = false; 
                                attribute :>> kindOfNode = ObjectNodeKind::Unspecified; 
                                attribute :>> ordering = ObjectNodeOrderingKind::FIFO; 
                            }  
                            out port 'FOP 1' : FunctionOutputPort  { 
                                @CapellaID { eid = "f5f39481-a5a0-4b56-bf09-f00b6ae19c23"; } 
                                attribute :>> isControl = false; 
                                attribute :>> isControlType = false; 
                                attribute :>> kindOfNode = ObjectNodeKind::Unspecified; 
                                attribute :>> ordering = ObjectNodeOrderingKind::FIFO; 
                            }  
                            out port 'FOP 2' : FunctionOutputPort  { 
                                @CapellaID { eid = "bd4ae955-bfbd-4509-856b-89f79e06baa3"; } 
                                attribute :>> isControl = false; 
                                attribute :>> isControlType = false; 
                                attribute :>> kindOfNode = ObjectNodeKind::Unspecified; 
                                attribute :>> ordering = ObjectNodeOrderingKind::FIFO; 
                            }  
                            ref :>> inputs =  ('FIP 1',
                            'FIP 2',
                            'FIP 3'); 
                            ref :>> outputs =  ('FOP 1',
                            'FOP 2'); 
                        }  
                        action 'Monitor Pad Wear' : LogicalFunction  { 
                            @CapellaID { eid = "12e98617-4f4c-4189-aac6-fa38c30b57ae"; } 
                            attribute :>> aggregationKind = AggregationKind::UNSET; 
                            attribute :>> isFinal = false; 
                            attribute :>> isAbstract = false; 
                            attribute :>> isDerived = false; 
                            attribute :>> isPartOfKey = false; 
                            attribute :>> isReadOnly = false; 
                            attribute :>> isStatic = false; 
                            attribute :>> kind = FunctionKind::FUNCTION; 
                            attribute :>> isMaxInclusive = false; 
                            attribute :>> isMinInclusive = false; 
                            attribute :>> isOrdered = false; 
                            attribute :>> isUnique = false; 
                            in port 'FIP 1' : FunctionInputPort  { 
                                @CapellaID { eid = "d84b8ab8-6e84-4547-b426-827df5aab0da"; } 
                                attribute :>> isControl = false; 
                                attribute :>> isControlType = false; 
                                attribute :>> kindOfNode = ObjectNodeKind::Unspecified; 
                                attribute :>> ordering = ObjectNodeOrderingKind::FIFO; 
                            }  
                            out port 'FOP 1' : FunctionOutputPort  { 
                                @CapellaID { eid = "6b498b94-a251-46fa-917f-cf3edcceb63e"; } 
                                attribute :>> isControl = false; 
                                attribute :>> isControlType = false; 
                                attribute :>> kindOfNode = ObjectNodeKind::Unspecified; 
                                attribute :>> ordering = ObjectNodeOrderingKind::FIFO; 
                            }  
                            ref :>> inputs =  ('FIP 1'); 
                            ref :>> outputs =  ('FOP 1'); 
                        }  
                        action 'Report Status to Rider' : LogicalFunction  { 
                            @CapellaID { eid = "e8f147cd-3879-494e-a9b5-d5b0b1b7a96a"; } 
                            attribute :>> aggregationKind = AggregationKind::UNSET; 
                            attribute :>> isFinal = false; 
                            attribute :>> isAbstract = false; 
                            attribute :>> isDerived = false; 
                            attribute :>> isPartOfKey = false; 
                            attribute :>> isReadOnly = false; 
                            attribute :>> isStatic = false; 
                            attribute :>> kind = FunctionKind::FUNCTION; 
                            attribute :>> isMaxInclusive = false; 
                            attribute :>> isMinInclusive = false; 
                            attribute :>> isOrdered = false; 
                            attribute :>> isUnique = false; 
                            in port 'FIP 1' : FunctionInputPort  { 
                                @CapellaID { eid = "e6f4e372-8718-46cb-b725-d560ab60173a"; } 
                                attribute :>> isControl = false; 
                                attribute :>> isControlType = false; 
                                attribute :>> kindOfNode = ObjectNodeKind::Unspecified; 
                                attribute :>> ordering = ObjectNodeOrderingKind::FIFO; 
                            }  
                            out port 'FOP 1' : FunctionOutputPort  { 
                                @CapellaID { eid = "98f3925f-7205-4575-8868-5a971cb318f9"; } 
                                attribute :>> isControl = false; 
                                attribute :>> isControlType = false; 
                                attribute :>> kindOfNode = ObjectNodeKind::Unspecified; 
                                attribute :>> ordering = ObjectNodeOrderingKind::FIFO; 
                            }  
                            ref :>> inputs =  ('FIP 1'); 
                            ref :>> outputs =  ('FOP 1'); 
                        }  
                        action 'Transmit Data' : LogicalFunction  { 
                            @CapellaID { eid = "87ccddaf-137c-4148-a258-b3bbb8266cfb"; } 
                            attribute :>> aggregationKind = AggregationKind::UNSET; 
                            attribute :>> isFinal = false; 
                            attribute :>> isAbstract = false; 
                            attribute :>> isDerived = false; 
                            attribute :>> isPartOfKey = false; 
                            attribute :>> isReadOnly = false; 
                            attribute :>> isStatic = false; 
                            attribute :>> kind = FunctionKind::FUNCTION; 
                            attribute :>> isMaxInclusive = false; 
                            attribute :>> isMinInclusive = false; 
                            attribute :>> isOrdered = false; 
                            attribute :>> isUnique = false; 
                            in port 'FIP 1' : FunctionInputPort  { 
                                @CapellaID { eid = "1bd72d6b-9893-49ab-8e96-cab6c270fe7f"; } 
                                attribute :>> isControl = false; 
                                attribute :>> isControlType = false; 
                                attribute :>> kindOfNode = ObjectNodeKind::Unspecified; 
                                attribute :>> ordering = ObjectNodeOrderingKind::FIFO; 
                            }  
                            out port 'FOP 1' : FunctionOutputPort  { 
                                @CapellaID { eid = "32434cdf-1f1a-4ee9-9b9d-b79b90e518e8"; } 
                                attribute :>> isControl = false; 
                                attribute :>> isControlType = false; 
                                attribute :>> kindOfNode = ObjectNodeKind::Unspecified; 
                                attribute :>> ordering = ObjectNodeOrderingKind::FIFO; 
                            }  
                            ref :>> inputs =  ('FIP 1'); 
                            ref :>> outputs =  ('FOP 1'); 
                        }  
                        ref :>> ownedFunctionalExchanges =  ('ad0bf977-f80b-4531-908c-15339efe8552',
                        '44aa6935-2a9f-4b13-a4e0-18c03ef9867d',
                        'ee82a531-56f7-46eb-89cc-0671287b7ae6',
                        '14e1a944-4f58-4301-b347-680feb5d9bbd',
                        'b5c77a25-2ac1-40c3-8766-5681575540aa',
                        'e7844942-9c1b-422b-9e7b-04e103846328',
                        '44b4dccd-b0cc-4b66-97a1-6b6f9189e80c',
                        '952862ee-52b4-4852-b162-2e5481a0eb9c',
                        '0ee75954-7414-4e5b-8659-163a2c448655',
                        'b8ce39f5-1700-4df9-9a4b-2fff8fda47b6',
                        'eaff3864-4c2e-4008-8370-1574e22000c7',
                        '3e6b2a9b-4ab2-4897-9054-2639146b7fc4',
                        '9b60f9a5-e806-41cf-b6ba-f158ba295bcc',
                        '7ab7507b-1ac8-42f4-9c9f-e9fc7bae6da6',
                        '52d920ba-e3d0-4dda-821a-20f49ef4aa1b',
                        'bec13766-ed3d-43f4-9837-f52fdb4fd0b3',
                        'cc09c46f-9c73-4e76-b10b-c2c5de01a667',
                        '32384939-acdf-4bba-921e-c483a3ea9df7',
                        '00f57739-1a15-4508-91d6-b4ac4654bba0',
                        '76488e76-74db-4f7d-930e-83fbe56cdbce',
                        '422a42a6-68d8-4352-ae62-beb57cf11e41',
                        'fe659c09-7014-4e26-a12c-5e971d5794ab'); 
                        ref :>> ownedFunctions =  ('Capture Brake Input',
                        'Modulate Input Forces',
                        'Translate Mechanical Action to Signal',
                        'Tranmit Signal',
                        'Transmit Force',
                        'Transmit Force ',
                        'Transmit Signal',
                        'Receive Force',
                        'Receive Signal',
                        'Position Pads',
                        'Amplify Force',
                        'Amplify Force',
                        'Position Pads',
                        'Apply Friction to Rotors',
                        'Apply Friction to Rotors',
                        'Gather 17',
                        'Detect Brake Engagement Level',
                        'Monitor Pad Wear',
                        'Report Status to Rider',
                        'Transmit Data'); 
                         
                    }  
                    action 'Split 14' : LogicalFunction  { 
                        @CapellaID { eid = "e00ee830-74a1-477d-ba27-b04651bff13a"; } 
                        attribute :>> aggregationKind = AggregationKind::UNSET; 
                        attribute :>> isFinal = false; 
                        attribute :>> isAbstract = false; 
                        attribute :>> isDerived = false; 
                        attribute :>> isPartOfKey = false; 
                        attribute :>> isReadOnly = false; 
                        attribute :>> isStatic = false; 
                        attribute :>> kind = FunctionKind::SPLIT; 
                        attribute :>> isMaxInclusive = false; 
                        attribute :>> isMinInclusive = false; 
                        attribute :>> isOrdered = false; 
                        attribute :>> isUnique = false; 
                        out port 'FOP 2' : FunctionOutputPort  { 
                            @CapellaID { eid = "ec53719a-b1ce-406e-8ef5-6576ffc1477e"; } 
                            attribute :>> isControl = false; 
                            attribute :>> isControlType = false; 
                            attribute :>> kindOfNode = ObjectNodeKind::Unspecified; 
                            attribute :>> ordering = ObjectNodeOrderingKind::FIFO; 
                             
                        }  
                        ref :>> outputs =  ('FOP 2'); 
                         
                    }  
                    action 'Transfer Propulson and Stopping Force' : LogicalFunction  { 
                        @CapellaID { eid = "c921c2b6-6f60-4e87-ab2e-cc5117522112"; } 
                        attribute :>> aggregationKind = AggregationKind::UNSET; 
                        attribute :>> isFinal = false; 
                        attribute :>> isAbstract = false; 
                        attribute :>> isDerived = false; 
                        attribute :>> isPartOfKey = false; 
                        attribute :>> isReadOnly = false; 
                        attribute :>> isStatic = false; 
                        attribute :>> kind = FunctionKind::FUNCTION; 
                        attribute :>> isMaxInclusive = false; 
                        attribute :>> isMinInclusive = false; 
                        attribute :>> isOrdered = false; 
                        attribute :>> isUnique = false; 
                        in port 'FIP 2' : FunctionInputPort  { 
                            @CapellaID { eid = "0ef86969-2ace-431a-b736-0c215c40b267"; } 
                            attribute :>> isControl = false; 
                            attribute :>> isControlType = false; 
                            attribute :>> kindOfNode = ObjectNodeKind::Unspecified; 
                            attribute :>> ordering = ObjectNodeOrderingKind::FIFO; 
                             
                        }  
                        ref :>> inputs =  ('FIP 2'); 
                         
                    }  
                    action 'Observe Status' : LogicalFunction  { 
                        @CapellaID { eid = "a961c416-a183-452a-a1e4-cf62c743cde5"; } 
                        attribute :>> aggregationKind = AggregationKind::UNSET; 
                        attribute :>> isFinal = false; 
                        attribute :>> isAbstract = false; 
                        attribute :>> isDerived = false; 
                        attribute :>> isPartOfKey = false; 
                        attribute :>> isReadOnly = false; 
                        attribute :>> isStatic = false; 
                        attribute :>> kind = FunctionKind::FUNCTION; 
                        attribute :>> isMaxInclusive = false; 
                        attribute :>> isMinInclusive = false; 
                        attribute :>> isOrdered = false; 
                        attribute :>> isUnique = false; 
                        in port 'FIP 1' : FunctionInputPort  { 
                            @CapellaID { eid = "43043e49-94a3-422d-b9bb-5ba08bf098a3"; } 
                            attribute :>> isControl = false; 
                            attribute :>> isControlType = false; 
                            attribute :>> kindOfNode = ObjectNodeKind::Unspecified; 
                            attribute :>> ordering = ObjectNodeOrderingKind::FIFO; 
                        }  
                        ref :>> inputs =  ('FIP 1'); 
                    }  
                    action 'Monitor Diagnostics' : LogicalFunction  { 
                        @CapellaID { eid = "1aa64cba-3ebc-473a-8a76-586dfa6b4d0f"; } 
                        attribute :>> aggregationKind = AggregationKind::UNSET; 
                        attribute :>> isFinal = false; 
                        attribute :>> isAbstract = false; 
                        attribute :>> isDerived = false; 
                        attribute :>> isPartOfKey = false; 
                        attribute :>> isReadOnly = false; 
                        attribute :>> isStatic = false; 
                        attribute :>> kind = FunctionKind::FUNCTION; 
                        attribute :>> isMaxInclusive = false; 
                        attribute :>> isMinInclusive = false; 
                        attribute :>> isOrdered = false; 
                        attribute :>> isUnique = false; 
                        in port 'FIP 1' : FunctionInputPort  { 
                            @CapellaID { eid = "bd10263e-7cb5-4476-a01d-4ffb88c5e8df"; } 
                            attribute :>> isControl = false; 
                            attribute :>> isControlType = false; 
                            attribute :>> kindOfNode = ObjectNodeKind::Unspecified; 
                            attribute :>> ordering = ObjectNodeOrderingKind::FIFO; 
                        }  
                        ref :>> inputs =  ('FIP 1'); 
                    }  
                    action 'Provide environmental contitions' : LogicalFunction  { 
                        @CapellaID { eid = "7f938712-791f-4437-be0c-0add442cc7be"; } 
                        attribute :>> aggregationKind = AggregationKind::UNSET; 
                        attribute :>> isFinal = false; 
                        attribute :>> isAbstract = false; 
                        attribute :>> isDerived = false; 
                        attribute :>> isPartOfKey = false; 
                        attribute :>> isReadOnly = false; 
                        attribute :>> isStatic = false; 
                        attribute :>> kind = FunctionKind::FUNCTION; 
                        attribute :>> isMaxInclusive = false; 
                        attribute :>> isMinInclusive = false; 
                        attribute :>> isOrdered = false; 
                        attribute :>> isUnique = false; 
                        out port 'FOP 1' : FunctionOutputPort  { 
                            @CapellaID { eid = "144f285b-ea9a-4533-9b55-df20b5ed7a7c"; } 
                            attribute :>> isControl = false; 
                            attribute :>> isControlType = false; 
                            attribute :>> kindOfNode = ObjectNodeKind::Unspecified; 
                            attribute :>> ordering = ObjectNodeOrderingKind::FIFO; 
                        }  
                        out port 'FOP 2' : FunctionOutputPort  { 
                            @CapellaID { eid = "c3f4b7c9-bf60-4be5-a91f-28118b83180f"; } 
                            attribute :>> isControl = false; 
                            attribute :>> isControlType = false; 
                            attribute :>> kindOfNode = ObjectNodeKind::Unspecified; 
                            attribute :>> ordering = ObjectNodeOrderingKind::FIFO; 
                        }  
                        out port 'FOP 3' : FunctionOutputPort  { 
                            @CapellaID { eid = "f7d25cb6-d058-4a5a-8d1f-5b23cc43d51d"; } 
                            attribute :>> isControl = false; 
                            attribute :>> isControlType = false; 
                            attribute :>> kindOfNode = ObjectNodeKind::Unspecified; 
                            attribute :>> ordering = ObjectNodeOrderingKind::FIFO; 
                        }  
                        out port 'FOP 4' : FunctionOutputPort  { 
                            @CapellaID { eid = "76ad947d-ce88-4744-8f8c-54419597d587"; } 
                            attribute :>> isControl = false; 
                            attribute :>> isControlType = false; 
                            attribute :>> kindOfNode = ObjectNodeKind::Unspecified; 
                            attribute :>> ordering = ObjectNodeOrderingKind::FIFO; 
                        }  
                        ref :>> outputs =  ('FOP 1',
                        'FOP 2',
                        'FOP 3',
                        'FOP 4'); 
                    }  
                    action 'Receieve Environment' : LogicalFunction  { 
                        @CapellaID { eid = "32a98eb2-2863-4b41-a5cd-cdbae8e97037"; } 
                        attribute :>> aggregationKind = AggregationKind::UNSET; 
                        attribute :>> isFinal = false; 
                        attribute :>> isAbstract = false; 
                        attribute :>> isDerived = false; 
                        attribute :>> isPartOfKey = false; 
                        attribute :>> isReadOnly = false; 
                        attribute :>> isStatic = false; 
                        attribute :>> kind = FunctionKind::FUNCTION; 
                        attribute :>> isMaxInclusive = false; 
                        attribute :>> isMinInclusive = false; 
                        attribute :>> isOrdered = false; 
                        attribute :>> isUnique = false; 
                        in port 'FIP 1' : FunctionInputPort  { 
                            @CapellaID { eid = "915504d6-1753-43da-96b9-5f33e93dd052"; } 
                            attribute :>> isControl = false; 
                            attribute :>> isControlType = false; 
                            attribute :>> kindOfNode = ObjectNodeKind::Unspecified; 
                            attribute :>> ordering = ObjectNodeOrderingKind::FIFO; 
                        }  
                        ref :>> inputs =  ('FIP 1'); 
                    }  
                    action 'Receive Environment' : LogicalFunction  { 
                        @CapellaID { eid = "985135db-8977-4cd2-aaa4-1f88cd7b7a17"; } 
                        attribute :>> aggregationKind = AggregationKind::UNSET; 
                        attribute :>> isFinal = false; 
                        attribute :>> isAbstract = false; 
                        attribute :>> isDerived = false; 
                        attribute :>> isPartOfKey = false; 
                        attribute :>> isReadOnly = false; 
                        attribute :>> isStatic = false; 
                        attribute :>> kind = FunctionKind::FUNCTION; 
                        attribute :>> isMaxInclusive = false; 
                        attribute :>> isMinInclusive = false; 
                        attribute :>> isOrdered = false; 
                        attribute :>> isUnique = false; 
                        in port 'FIP 1' : FunctionInputPort  { 
                            @CapellaID { eid = "9cc9c004-d9f4-4e3f-a3eb-08f83475adbf"; } 
                            attribute :>> isControl = false; 
                            attribute :>> isControlType = false; 
                            attribute :>> kindOfNode = ObjectNodeKind::Unspecified; 
                            attribute :>> ordering = ObjectNodeOrderingKind::FIFO; 
                        }  
                        ref :>> inputs =  ('FIP 1'); 
                    }  
                    action 'Receive Environment' : LogicalFunction  { 
                        @CapellaID { eid = "d9870a47-f856-46c7-a3d2-f10bf678e0dc"; } 
                        attribute :>> aggregationKind = AggregationKind::UNSET; 
                        attribute :>> isFinal = false; 
                        attribute :>> isAbstract = false; 
                        attribute :>> isDerived = false; 
                        attribute :>> isPartOfKey = false; 
                        attribute :>> isReadOnly = false; 
                        attribute :>> isStatic = false; 
                        attribute :>> kind = FunctionKind::FUNCTION; 
                        attribute :>> isMaxInclusive = false; 
                        attribute :>> isMinInclusive = false; 
                        attribute :>> isOrdered = false; 
                        attribute :>> isUnique = false; 
                        in port 'FIP 1' : FunctionInputPort  { 
                            @CapellaID { eid = "463c481a-e878-4026-85a4-ab34a5265106"; } 
                            attribute :>> isControl = false; 
                            attribute :>> isControlType = false; 
                            attribute :>> kindOfNode = ObjectNodeKind::Unspecified; 
                            attribute :>> ordering = ObjectNodeOrderingKind::FIFO; 
                        }  
                        ref :>> inputs =  ('FIP 1'); 
                    }  
                    action 'Recieve Environment' : LogicalFunction  { 
                        @CapellaID { eid = "33878466-5e4b-4fe1-88e3-c1a9d5757261"; } 
                        attribute :>> aggregationKind = AggregationKind::UNSET; 
                        attribute :>> isFinal = false; 
                        attribute :>> isAbstract = false; 
                        attribute :>> isDerived = false; 
                        attribute :>> isPartOfKey = false; 
                        attribute :>> isReadOnly = false; 
                        attribute :>> isStatic = false; 
                        attribute :>> kind = FunctionKind::FUNCTION; 
                        attribute :>> isMaxInclusive = false; 
                        attribute :>> isMinInclusive = false; 
                        attribute :>> isOrdered = false; 
                        attribute :>> isUnique = false; 
                        in port 'FIP 1' : FunctionInputPort  { 
                            @CapellaID { eid = "cd8098dd-078f-45c6-b769-0cbd58c5460e"; } 
                            attribute :>> isControl = false; 
                            attribute :>> isControlType = false; 
                            attribute :>> kindOfNode = ObjectNodeKind::Unspecified; 
                            attribute :>> ordering = ObjectNodeOrderingKind::FIFO; 
                        }  
                        ref :>> inputs =  ('FIP 1'); 
                    }  
                    ref :>> ownedFunctionalExchanges =  ('37af32b5-d71f-4c98-a01e-eae18ea38b26',
                    '3d0e3659-15ef-449e-966b-f382c5be769b',
                    'b685778b-e21d-4e24-8b38-c2d22de73f93',
                    '9ffe6e5a-3318-4ed5-a2e9-0e97b25b67f2',
                    '874e4535-2aaf-45e3-8807-5f327541b7ab',
                    '4cef6ea1-a961-46d6-858d-dce1356b38ec',
                    '9afd5a1c-f0f6-4b96-8374-98d91f3d5cba',
                    'b64b1d1c-49a9-42e7-b9f8-396cbc6197ee'); 
                    ref :>> ownedFunctions =  ('Provide Stopping',
                    'Split 14',
                    'Transfer Propulson and Stopping Force',
                    'Observe Status',
                    'Monitor Diagnostics',
                    'Provide environmental contitions',
                    'Receieve Environment',
                    'Receive Environment',
                    'Receive Environment',
                    'Recieve Environment'); 
                     
                }  
            } 
            package 'Capabilities' {
                @PackageMeta {
                    type = "CapabilityRealizationPkg";
                } 
                @CapellaID { eid = "87428bf7-6f06-4829-8e41-2c81a4a3dce7"; } 
                use case 'Terrain Navigation' : CapabilityRealization { 
                    @CapellaID { eid = "ffb5910f-fc68-4a0f-9124-6119c176007f"; } 
                    dependency '3ebd069b-42a8-4d06-bf5a-2d78e85cf87a'
                        from '3c1b23a8-b669-4226-a5f4-797e91c870b9'
                        to  'System Analysis'::'Capabilities'::'Terrain Navigation'::'79eb6beb-fab6-41d4-b979-95fa5c7e1e9c' { 
                        @TransfoLink { 
                            @CapellaID { eid = "3ebd069b-42a8-4d06-bf5a-2d78e85cf87a"; } 
                        }  
                    }  
                    ref action '3c1b23a8-b669-4226-a5f4-797e91c870b9' = 'Logical Functions'::'Root Logical Function'.'Ride Mountain Trails'; 
                     
                }  
                use case 'Durability and Shock Absorption' : CapabilityRealization { 
                    @CapellaID { eid = "c1cf0c05-f171-480b-9ecb-70ebe00d4b55"; } 
                    dependency '6fb23b64-262e-4736-a831-89a1f8c1f0c3'
                        from '9b649a35-29ed-410d-8e42-79bdfc44fe5a'
                        to  'System Analysis'::'Capabilities'::'Durability and Shock Absorption'::'ff9490db-287a-4c8c-866d-7984a9877bca' { 
                        @TransfoLink { 
                            @CapellaID { eid = "6fb23b64-262e-4736-a831-89a1f8c1f0c3"; } 
                        }  
                    }  
                    ref action '9b649a35-29ed-410d-8e42-79bdfc44fe5a' = 'Logical Functions'::'Root Logical Function'.'Ride Mountain Trails'; 
                     
                }  
                use case 'Climatic Adabptability' : CapabilityRealization { 
                    @CapellaID { eid = "1a7f6ab5-0827-43b8-af59-07ebd266e3bd"; } 
                    dependency 'afd7ad15-e392-464b-beec-3da8b422f17c'
                        from 'c030b9fb-3b08-453f-95c8-67fbd77d9401'
                        to  'System Analysis'::'Capabilities'::'Climatic Adabptability'::'eac3b427-ea94-4d06-b977-c06ba3681470' { 
                        @TransfoLink { 
                            @CapellaID { eid = "afd7ad15-e392-464b-beec-3da8b422f17c"; } 
                        }  
                    }  
                    ref action 'c030b9fb-3b08-453f-95c8-67fbd77d9401' = 'Logical Functions'::'Root Logical Function'.'Ride Mountain Trails'; 
                     
                }  
                use case 'Maneuverability' : CapabilityRealization { 
                    @CapellaID { eid = "5d4d5eea-4c9c-4a88-a382-a97ffaae6996"; } 
                    dependency '1b1e85e9-0858-461a-8ffb-a6ca8bc94564'
                        from '888c9126-9ba2-4164-aa3a-84a959124f35'
                        to  'System Analysis'::'Capabilities'::'Maneuverability'::'f0093fb7-94d8-457e-bb59-f31bc6d31562' { 
                        @TransfoLink { 
                            @CapellaID { eid = "1b1e85e9-0858-461a-8ffb-a6ca8bc94564"; } 
                        }  
                    }  
                    ref action '888c9126-9ba2-4164-aa3a-84a959124f35' = 'Logical Functions'::'Root Logical Function'.'Ride Mountain Trails'; 
                     
                }  
                use case 'Mountain Trail Ride' : CapabilityRealization { 
                    @CapellaID { eid = "c6c83ace-1cdb-4919-a6ac-97e70bf92f64"; } 
                    dependency '6243f019-4938-46b8-8c81-8aaca0b683df'
                        from '11a65fa9-1b5e-4cac-8171-e374470cc26c'
                        to  'System Analysis'::'Capabilities'::'Mountain Trail Ride'::'bba6e310-ae23-42e9-affa-921de32bae9a' { 
                        @TransfoLink { 
                            @CapellaID { eid = "6243f019-4938-46b8-8c81-8aaca0b683df"; } 
                        }  
                    }  
                    ref action '11a65fa9-1b5e-4cac-8171-e374470cc26c' = 'Logical Functions'::'Root Logical Function'.'Ride Mountain Trails'; 
                     
                }  
            } 
            package 'Interfaces' {
                @PackageMeta {
                    type = "InterfacePkg";
                } 
                @CapellaID { eid = "fc1286b1-f5ca-4764-bfb3-bb1e8f346020"; } 
            } 
            package 'Data' {
                @PackageMeta {
                    type = "DataPkg";
                } 
                @CapellaID { eid = "9056d296-a8c2-4494-aa40-4bc4af5765e4"; } 
            } 
            package 'Structure' {
                @PackageMeta {
                    type = "LogicalComponentPkg";
                } 
                @CapellaID { eid = "39aef1ea-53b4-4f8f-b707-447c2209f3a2"; } 
                dependency 'e61d515a-fc27-4fc7-b2c8-4b210cb3af1f'
                    from 'Structure'::'c08b9a6c-4f8c-4445-afd7-9688f482d247'
                    to  'System Analysis'::'Structure'::'0d87b8e6-d09b-4f7c-8a74-a3bedfdc9ed4' { 
                    @TransfoLink { 
                        @CapellaID { eid = "e61d515a-fc27-4fc7-b2c8-4b210cb3af1f"; } 
                    }  
                }  
                dependency 'f0d780f4-38ec-4afd-ac7d-d2bfc8372ad4'
                    from 'Structure'::'7984cfbb-55d2-47d0-9c72-f5668d4d323a'
                    to  'System Analysis'::'Structure'::'062eb484-d1a7-43f1-b2d3-43491619dd73' { 
                    @TransfoLink { 
                        @CapellaID { eid = "f0d780f4-38ec-4afd-ac7d-d2bfc8372ad4"; } 
                    }  
                }  
                dependency 'ca20ca93-ce89-4d67-8cd4-9900658567d6'
                    from 'Structure'::'c951da30-251a-4b19-80db-dda40e2d52c5'
                    to  'System Analysis'::'Structure'::'e550ffcb-ecee-4557-b25b-4084bce2c088' { 
                    @TransfoLink { 
                        @CapellaID { eid = "ca20ca93-ce89-4d67-8cd4-9900658567d6"; } 
                    }  
                }  
                part 'Braking System' : LogicalComponent { 
                    @CapellaID { eid = "8fde0bcd-b1fe-47c4-b301-b63a811d1f70"; } 
                    attribute :>> isAbstract = false; 
                    attribute :>> isActor = false; 
                    attribute :>> isHuman = false; 
                    part 'ed265c96-8211-45e1-a1eb-d0294af68612' : CPart :> 'Control Subsystem'  { 
                        @CapellaID { eid = "ed265c96-8211-45e1-a1eb-d0294af68612"; } 
                        attribute :>> aggregationKind = AggregationKind::UNSET; 
                        attribute :>> isFinal = false; 
                        attribute :>> isAbstract = false; 
                        attribute :>> isDerived = false; 
                        attribute :>> isPartOfKey = false; 
                        attribute :>> isReadOnly = false; 
                        attribute :>> isStatic = false; 
                        attribute :>> isMaxInclusive = false; 
                        attribute :>> isMinInclusive = false; 
                        attribute :>> isOrdered = false; 
                        attribute :>> isUnique = false; 
                    }  
                    part '0f993d44-deee-413d-bb2f-0b76c3bf7cab' : CPart :> 'Break Actuation Subsystem '  { 
                        @CapellaID { eid = "0f993d44-deee-413d-bb2f-0b76c3bf7cab"; } 
                        attribute :>> aggregationKind = AggregationKind::UNSET; 
                        attribute :>> isFinal = false; 
                        attribute :>> isAbstract = false; 
                        attribute :>> isDerived = false; 
                        attribute :>> isPartOfKey = false; 
                        attribute :>> isReadOnly = false; 
                        attribute :>> isStatic = false; 
                        attribute :>> isMaxInclusive = false; 
                        attribute :>> isMinInclusive = false; 
                        attribute :>> isOrdered = false; 
                        attribute :>> isUnique = false; 
                    }  
                    part 'e00ba5fa-3b9e-4eb0-9bd1-73b4f158e20b' : CPart :> 'Force Transmission Subsystem'  { 
                        @CapellaID { eid = "e00ba5fa-3b9e-4eb0-9bd1-73b4f158e20b"; } 
                        attribute :>> aggregationKind = AggregationKind::UNSET; 
                        attribute :>> isFinal = false; 
                        attribute :>> isAbstract = false; 
                        attribute :>> isDerived = false; 
                        attribute :>> isPartOfKey = false; 
                        attribute :>> isReadOnly = false; 
                        attribute :>> isStatic = false; 
                        attribute :>> isMaxInclusive = false; 
                        attribute :>> isMinInclusive = false; 
                        attribute :>> isOrdered = false; 
                        attribute :>> isUnique = false; 
                    }  
                    part '6c09ed48-23d9-4499-9062-fdb65eca7b44' : CPart :> 'Feedback and Sensing'  { 
                        @CapellaID { eid = "6c09ed48-23d9-4499-9062-fdb65eca7b44"; } 
                        attribute :>> aggregationKind = AggregationKind::UNSET; 
                        attribute :>> isFinal = false; 
                        attribute :>> isAbstract = false; 
                        attribute :>> isDerived = false; 
                        attribute :>> isPartOfKey = false; 
                        attribute :>> isReadOnly = false; 
                        attribute :>> isStatic = false; 
                        attribute :>> isMaxInclusive = false; 
                        attribute :>> isMinInclusive = false; 
                        attribute :>> isOrdered = false; 
                        attribute :>> isUnique = false; 
                    }  
                    port 'CP 1' : ComponentPort { 
                        @CapellaID { eid = "153552d9-dca5-4836-b221-cff11c61070c"; } 
                        attribute :>> aggregationKind = AggregationKind::UNSET; 
                        attribute :>> isFinal = false; 
                        attribute :>> isAbstract = false; 
                        attribute :>> isDerived = false; 
                        attribute :>> isPartOfKey = false; 
                        attribute :>> isReadOnly = false; 
                        attribute :>> isStatic = false; 
                        attribute :>> kind = ComponentPortKind::FLOW; 
                        attribute :>> isMaxInclusive = false; 
                        attribute :>> isMinInclusive = false; 
                        attribute :>> isOrdered = false; 
                        attribute :>> orientation = OrientationPortKind::INOUT; 
                        attribute :>> isUnique = false; 
                         
                    }  
                    port 'CP 2' : ComponentPort { 
                        @CapellaID { eid = "8c03c970-8503-492a-a83e-facbd149437f"; } 
                        attribute :>> aggregationKind = AggregationKind::UNSET; 
                        attribute :>> isFinal = false; 
                        attribute :>> isAbstract = false; 
                        attribute :>> isDerived = false; 
                        attribute :>> isPartOfKey = false; 
                        attribute :>> isReadOnly = false; 
                        attribute :>> isStatic = false; 
                        attribute :>> kind = ComponentPortKind::FLOW; 
                        attribute :>> isMaxInclusive = false; 
                        attribute :>> isMinInclusive = false; 
                        attribute :>> isOrdered = false; 
                        attribute :>> orientation = OrientationPortKind::INOUT; 
                        attribute :>> isUnique = false; 
                         
                    }  
                    port 'CP 3' : ComponentPort { 
                        @CapellaID { eid = "8d4173d2-4f7e-4936-8ebc-5e9704c53b34"; } 
                        attribute :>> aggregationKind = AggregationKind::UNSET; 
                        attribute :>> isFinal = false; 
                        attribute :>> isAbstract = false; 
                        attribute :>> isDerived = false; 
                        attribute :>> isPartOfKey = false; 
                        attribute :>> isReadOnly = false; 
                        attribute :>> isStatic = false; 
                        attribute :>> kind = ComponentPortKind::FLOW; 
                        attribute :>> isMaxInclusive = false; 
                        attribute :>> isMinInclusive = false; 
                        attribute :>> isOrdered = false; 
                        attribute :>> orientation = OrientationPortKind::INOUT; 
                        attribute :>> isUnique = false; 
                         
                    }  
                    part 'Control Subsystem' : LogicalComponent { 
                        doc /*
                        <p>Example elements:</p>

                        <ul>
                        	<li>Brake lever</li>
                        	<li>Hydraulic actuator input</li>
                        	<li>Mechanical cable anchor</li>
                        </ul>

                        */ 
                        @CapellaID { eid = "41a37635-88ac-447e-b1f2-f1ca7c7f357d"; } 
                        attribute :>> isAbstract = false; 
                        attribute :>> isActor = false; 
                        attribute :>> isHuman = false; 
                        allocation '79738f5d-12ac-40f3-b252-337a4a80691d' : ComponentFunctionalAllocation
                            allocate function ::> 'Logical Functions'::'Root Logical Function'.'Provide Stopping'.'Capture Brake Input'
                            to component ::> 'Control Subsystem' { 
                            @CapellaID { eid = "79738f5d-12ac-40f3-b252-337a4a80691d"; } 
                        } 
                        perform 'Logical Functions'::'Root Logical Function'.'Provide Stopping'.'Capture Brake Input' ; 
                        allocation '95866de7-dd13-4a59-8c48-deff81cb4006' : ComponentFunctionalAllocation
                            allocate function ::> 'Logical Functions'::'Root Logical Function'.'Provide Stopping'.'Modulate Input Forces'
                            to component ::> 'Control Subsystem' { 
                            @CapellaID { eid = "95866de7-dd13-4a59-8c48-deff81cb4006"; } 
                        } 
                        perform 'Logical Functions'::'Root Logical Function'.'Provide Stopping'.'Modulate Input Forces' ; 
                        allocation '25a8df6a-931f-49af-9dc5-4cb3f3ce4b86' : ComponentFunctionalAllocation
                            allocate function ::> 'Logical Functions'::'Root Logical Function'.'Provide Stopping'.'Translate Mechanical Action to Signal'
                            to component ::> 'Control Subsystem' { 
                            @CapellaID { eid = "25a8df6a-931f-49af-9dc5-4cb3f3ce4b86"; } 
                        } 
                        perform 'Logical Functions'::'Root Logical Function'.'Provide Stopping'.'Translate Mechanical Action to Signal' ; 
                        allocation '1f3d5211-b3ba-4f1f-a3e0-3a3d5cb01be1' : ComponentFunctionalAllocation
                            allocate function ::> 'Logical Functions'::'Root Logical Function'.'Provide Stopping'.'Tranmit Signal'
                            to component ::> 'Control Subsystem' { 
                            @CapellaID { eid = "1f3d5211-b3ba-4f1f-a3e0-3a3d5cb01be1"; } 
                        } 
                        perform 'Logical Functions'::'Root Logical Function'.'Provide Stopping'.'Tranmit Signal' ; 
                        allocation 'aaa8a650-8ccd-446c-8b24-256e8aa885ff' : ComponentFunctionalAllocation
                            allocate function ::> 'Logical Functions'::'Root Logical Function'.'Provide Stopping'.'Transmit Force'
                            to component ::> 'Control Subsystem' { 
                            @CapellaID { eid = "aaa8a650-8ccd-446c-8b24-256e8aa885ff"; } 
                        } 
                        perform 'Logical Functions'::'Root Logical Function'.'Provide Stopping'.'Transmit Force' ; 
                        allocation '186edbc3-10d9-4a11-b44c-c17a4a48299f' : ComponentFunctionalAllocation
                            allocate function ::> 'Logical Functions'::'Root Logical Function'.'Receieve Environment'
                            to component ::> 'Control Subsystem' { 
                            @CapellaID { eid = "186edbc3-10d9-4a11-b44c-c17a4a48299f"; } 
                        } 
                        perform 'Logical Functions'::'Root Logical Function'.'Receieve Environment' ; 
                        ref :>> ownedFunctionalAllocation =  ('79738f5d-12ac-40f3-b252-337a4a80691d',
                        '95866de7-dd13-4a59-8c48-deff81cb4006',
                        '25a8df6a-931f-49af-9dc5-4cb3f3ce4b86',
                        '1f3d5211-b3ba-4f1f-a3e0-3a3d5cb01be1',
                        'aaa8a650-8ccd-446c-8b24-256e8aa885ff',
                        '186edbc3-10d9-4a11-b44c-c17a4a48299f'); 
                    }  
                    part 'Break Actuation Subsystem ' : LogicalComponent { 
                        doc /*
                        <p>Example elements:</p>

                        <ul>
                        	<li>Caliper mechanism</li>
                        	<li>Brake pads</li>
                        	<li>Rotor or braking surface interface (abstracted as &ldquo;Energy Transfer Interface&rdquo;)</li>
                        </ul>

                        */ 
                        @CapellaID { eid = "86b6a2dc-e4a7-47ba-aa3b-4d618bb5bde8"; } 
                        attribute :>> isAbstract = false; 
                        attribute :>> isActor = false; 
                        attribute :>> isHuman = false; 
                        allocation 'f6516aa9-efb7-4c4c-b121-5731a7a58961' : ComponentFunctionalAllocation
                            allocate function ::> 'Logical Functions'::'Root Logical Function'.'Provide Stopping'.'Receive Force'
                            to component ::> 'Break Actuation Subsystem ' { 
                            @CapellaID { eid = "f6516aa9-efb7-4c4c-b121-5731a7a58961"; } 
                        } 
                        perform 'Logical Functions'::'Root Logical Function'.'Provide Stopping'.'Receive Force' ; 
                        allocation 'd712641e-8cb2-4acb-bb6d-6b5a48cd17bd' : ComponentFunctionalAllocation
                            allocate function ::> 'Logical Functions'::'Root Logical Function'.'Provide Stopping'.'Receive Signal'
                            to component ::> 'Break Actuation Subsystem ' { 
                            @CapellaID { eid = "d712641e-8cb2-4acb-bb6d-6b5a48cd17bd"; } 
                        } 
                        perform 'Logical Functions'::'Root Logical Function'.'Provide Stopping'.'Receive Signal' ; 
                        allocation '6ce8693e-4562-42bc-953d-4bdf63058d5f' : ComponentFunctionalAllocation
                            allocate function ::> 'Logical Functions'::'Root Logical Function'.'Provide Stopping'.'Position Pads'
                            to component ::> 'Break Actuation Subsystem ' { 
                            @CapellaID { eid = "6ce8693e-4562-42bc-953d-4bdf63058d5f"; } 
                        } 
                        perform 'Logical Functions'::'Root Logical Function'.'Provide Stopping'.'Position Pads' ; 
                        allocation '58daa0fc-e957-4df9-ab8a-972b1b2dd4f2' : ComponentFunctionalAllocation
                            allocate function ::> 'Logical Functions'::'Root Logical Function'.'Provide Stopping'.'Amplify Force'
                            to component ::> 'Break Actuation Subsystem ' { 
                            @CapellaID { eid = "58daa0fc-e957-4df9-ab8a-972b1b2dd4f2"; } 
                        } 
                        perform 'Logical Functions'::'Root Logical Function'.'Provide Stopping'.'Amplify Force' ; 
                        allocation 'fc40427a-421a-4154-af98-c063f4bb0779' : ComponentFunctionalAllocation
                            allocate function ::> 'Logical Functions'::'Root Logical Function'.'Provide Stopping'.'Amplify Force'
                            to component ::> 'Break Actuation Subsystem ' { 
                            @CapellaID { eid = "fc40427a-421a-4154-af98-c063f4bb0779"; } 
                        } 
                        perform 'Logical Functions'::'Root Logical Function'.'Provide Stopping'.'Amplify Force' ; 
                        allocation 'fb37f248-cd0b-4ed2-8a65-9224ffdf90c2' : ComponentFunctionalAllocation
                            allocate function ::> 'Logical Functions'::'Root Logical Function'.'Provide Stopping'.'Position Pads'
                            to component ::> 'Break Actuation Subsystem ' { 
                            @CapellaID { eid = "fb37f248-cd0b-4ed2-8a65-9224ffdf90c2"; } 
                        } 
                        perform 'Logical Functions'::'Root Logical Function'.'Provide Stopping'.'Position Pads' ; 
                        allocation '494a888a-ebf6-4904-a85e-da3f50251452' : ComponentFunctionalAllocation
                            allocate function ::> 'Logical Functions'::'Root Logical Function'.'Provide Stopping'.'Apply Friction to Rotors'
                            to component ::> 'Break Actuation Subsystem ' { 
                            @CapellaID { eid = "494a888a-ebf6-4904-a85e-da3f50251452"; } 
                        } 
                        perform 'Logical Functions'::'Root Logical Function'.'Provide Stopping'.'Apply Friction to Rotors' ; 
                        allocation 'fd2c0d00-b105-439c-a363-2212c45257f3' : ComponentFunctionalAllocation
                            allocate function ::> 'Logical Functions'::'Root Logical Function'.'Provide Stopping'.'Apply Friction to Rotors'
                            to component ::> 'Break Actuation Subsystem ' { 
                            @CapellaID { eid = "fd2c0d00-b105-439c-a363-2212c45257f3"; } 
                        } 
                        perform 'Logical Functions'::'Root Logical Function'.'Provide Stopping'.'Apply Friction to Rotors' ; 
                        allocation '4a8c9742-49fb-420f-98bf-f76e37587bff' : ComponentFunctionalAllocation
                            allocate function ::> 'Logical Functions'::'Root Logical Function'.'Provide Stopping'.'Gather 17'
                            to component ::> 'Break Actuation Subsystem ' { 
                            @CapellaID { eid = "4a8c9742-49fb-420f-98bf-f76e37587bff"; } 
                        } 
                        perform 'Logical Functions'::'Root Logical Function'.'Provide Stopping'.'Gather 17' ; 
                        allocation 'b0c87687-7733-482b-9421-7a94107b3894' : ComponentFunctionalAllocation
                            allocate function ::> 'Logical Functions'::'Root Logical Function'.'Receive Environment'
                            to component ::> 'Break Actuation Subsystem ' { 
                            @CapellaID { eid = "b0c87687-7733-482b-9421-7a94107b3894"; } 
                        } 
                        perform 'Logical Functions'::'Root Logical Function'.'Receive Environment' ; 
                        ref :>> ownedFunctionalAllocation =  ('f6516aa9-efb7-4c4c-b121-5731a7a58961',
                        'd712641e-8cb2-4acb-bb6d-6b5a48cd17bd',
                        '6ce8693e-4562-42bc-953d-4bdf63058d5f',
                        '58daa0fc-e957-4df9-ab8a-972b1b2dd4f2',
                        'fc40427a-421a-4154-af98-c063f4bb0779',
                        'fb37f248-cd0b-4ed2-8a65-9224ffdf90c2',
                        '494a888a-ebf6-4904-a85e-da3f50251452',
                        'fd2c0d00-b105-439c-a363-2212c45257f3',
                        '4a8c9742-49fb-420f-98bf-f76e37587bff',
                        'b0c87687-7733-482b-9421-7a94107b3894'); 
                    }  
                    part 'Force Transmission Subsystem' : LogicalComponent { 
                        doc /*
                        <p>Example elements:</p>

                        <ul>
                        	<li>Force conduit (cable, hose)</li>
                        	<li>Modulation mechanism (e.g., hydraulic fluid or mechanical ratio adjusters)</li>
                        </ul>

                        */ 
                        @CapellaID { eid = "bd7f1096-e446-49f9-b0f6-632d2218d203"; } 
                        attribute :>> isAbstract = false; 
                        attribute :>> isActor = false; 
                        attribute :>> isHuman = false; 
                        allocation '9d59a750-7578-4dd4-bfdd-96f91382e76a' : ComponentFunctionalAllocation
                            allocate function ::> 'Logical Functions'::'Root Logical Function'.'Provide Stopping'.'Transmit Force '
                            to component ::> 'Force Transmission Subsystem' { 
                            @CapellaID { eid = "9d59a750-7578-4dd4-bfdd-96f91382e76a"; } 
                        } 
                        perform 'Logical Functions'::'Root Logical Function'.'Provide Stopping'.'Transmit Force ' ; 
                        allocation '5e07e372-0550-4e87-9234-2e4ca09ffde8' : ComponentFunctionalAllocation
                            allocate function ::> 'Logical Functions'::'Root Logical Function'.'Provide Stopping'.'Transmit Signal'
                            to component ::> 'Force Transmission Subsystem' { 
                            @CapellaID { eid = "5e07e372-0550-4e87-9234-2e4ca09ffde8"; } 
                        } 
                        perform 'Logical Functions'::'Root Logical Function'.'Provide Stopping'.'Transmit Signal' ; 
                        allocation '536e9bcb-947d-4149-ba3a-731d567b2ad8' : ComponentFunctionalAllocation
                            allocate function ::> 'Logical Functions'::'Root Logical Function'.'Receive Environment'
                            to component ::> 'Force Transmission Subsystem' { 
                            @CapellaID { eid = "536e9bcb-947d-4149-ba3a-731d567b2ad8"; } 
                        } 
                        perform 'Logical Functions'::'Root Logical Function'.'Receive Environment' ; 
                        ref :>> ownedFunctionalAllocation =  ('9d59a750-7578-4dd4-bfdd-96f91382e76a',
                        '5e07e372-0550-4e87-9234-2e4ca09ffde8',
                        '536e9bcb-947d-4149-ba3a-731d567b2ad8'); 
                    }  
                    part 'Feedback and Sensing' : LogicalComponent { 
                        doc /*
                        <p>Optional but may exist for higher end bikes.</p>

                        <p>Example elements:</p>

                        <ul>
                        	<li>Brake pad wear sensor</li>
                        	<li>Actuator position sensor</li>
                        	<li>Brake pressure sensor</li>
                        </ul>

                        */ 
                        @CapellaID { eid = "3a5296ce-7e2b-4400-a3b5-9e16d1ca04de"; } 
                        attribute :>> isAbstract = false; 
                        attribute :>> isActor = false; 
                        attribute :>> isHuman = false; 
                        allocation '1bf1be66-c3b9-4210-b24e-6b635c7c66ac' : ComponentFunctionalAllocation
                            allocate function ::> 'Logical Functions'::'Root Logical Function'.'Provide Stopping'.'Detect Brake Engagement Level'
                            to component ::> 'Feedback and Sensing' { 
                            @CapellaID { eid = "1bf1be66-c3b9-4210-b24e-6b635c7c66ac"; } 
                        } 
                        perform 'Logical Functions'::'Root Logical Function'.'Provide Stopping'.'Detect Brake Engagement Level' ; 
                        allocation '69e6a060-d50d-4b12-a246-b119e0100e75' : ComponentFunctionalAllocation
                            allocate function ::> 'Logical Functions'::'Root Logical Function'.'Provide Stopping'.'Monitor Pad Wear'
                            to component ::> 'Feedback and Sensing' { 
                            @CapellaID { eid = "69e6a060-d50d-4b12-a246-b119e0100e75"; } 
                        } 
                        perform 'Logical Functions'::'Root Logical Function'.'Provide Stopping'.'Monitor Pad Wear' ; 
                        allocation 'ccd8d5a0-42ea-4d2b-84d9-db8c7c4c7cfe' : ComponentFunctionalAllocation
                            allocate function ::> 'Logical Functions'::'Root Logical Function'.'Provide Stopping'.'Report Status to Rider'
                            to component ::> 'Feedback and Sensing' { 
                            @CapellaID { eid = "ccd8d5a0-42ea-4d2b-84d9-db8c7c4c7cfe"; } 
                        } 
                        perform 'Logical Functions'::'Root Logical Function'.'Provide Stopping'.'Report Status to Rider' ; 
                        allocation '798d5fb9-12bd-4d88-972e-354795892e0c' : ComponentFunctionalAllocation
                            allocate function ::> 'Logical Functions'::'Root Logical Function'.'Provide Stopping'.'Transmit Data'
                            to component ::> 'Feedback and Sensing' { 
                            @CapellaID { eid = "798d5fb9-12bd-4d88-972e-354795892e0c"; } 
                        } 
                        perform 'Logical Functions'::'Root Logical Function'.'Provide Stopping'.'Transmit Data' ; 
                        allocation '0c40d14f-5a34-4a0e-932c-4830121cd155' : ComponentFunctionalAllocation
                            allocate function ::> 'Logical Functions'::'Root Logical Function'.'Recieve Environment'
                            to component ::> 'Feedback and Sensing' { 
                            @CapellaID { eid = "0c40d14f-5a34-4a0e-932c-4830121cd155"; } 
                        } 
                        perform 'Logical Functions'::'Root Logical Function'.'Recieve Environment' ; 
                        ref :>> ownedFunctionalAllocation =  ('1bf1be66-c3b9-4210-b24e-6b635c7c66ac',
                        '69e6a060-d50d-4b12-a246-b119e0100e75',
                        'ccd8d5a0-42ea-4d2b-84d9-db8c7c4c7cfe',
                        '798d5fb9-12bd-4d88-972e-354795892e0c',
                        '0c40d14f-5a34-4a0e-932c-4830121cd155'); 
                    }  
                    ref :>> ownedLogicalComponents =  ('Control Subsystem',
                    'Break Actuation Subsystem ',
                    'Force Transmission Subsystem',
                    'Feedback and Sensing'); 
                     
                }  
                part 'Frame and Suspension' : LogicalComponent { 
                    @CapellaID { eid = "8c8d9259-6866-4966-975c-ad597a5b2f71"; } 
                    attribute :>> isAbstract = false; 
                    attribute :>> isActor = true; 
                    attribute :>> isHuman = false; 
                    port 'CP 1' : ComponentPort { 
                        @CapellaID { eid = "e19b825c-53b9-4659-8b22-279a23346e71"; } 
                        attribute :>> aggregationKind = AggregationKind::UNSET; 
                        attribute :>> isFinal = false; 
                        attribute :>> isAbstract = false; 
                        attribute :>> isDerived = false; 
                        attribute :>> isPartOfKey = false; 
                        attribute :>> isReadOnly = false; 
                        attribute :>> isStatic = false; 
                        attribute :>> kind = ComponentPortKind::FLOW; 
                        attribute :>> isMaxInclusive = false; 
                        attribute :>> isMinInclusive = false; 
                        attribute :>> isOrdered = false; 
                        attribute :>> orientation = OrientationPortKind::INOUT; 
                        attribute :>> isUnique = false; 
                         
                    }  
                     
                }  
                part 'Wheels and Tires' : LogicalComponent { 
                    @CapellaID { eid = "081a8875-5c94-4428-971b-75e2f14cbcad"; } 
                    attribute :>> isAbstract = false; 
                    attribute :>> isActor = true; 
                    attribute :>> isHuman = false; 
                    allocation '1771b82a-b7d7-4953-8501-1b7279df9c0f' : ComponentFunctionalAllocation
                        allocate function ::> 'Logical Functions'::'Root Logical Function'.'Transfer Propulson and Stopping Force'
                        to component ::> 'Structure'::'Wheels and Tires' { 
                        @CapellaID { eid = "1771b82a-b7d7-4953-8501-1b7279df9c0f"; } 
                    } 
                    perform 'Logical Functions'::'Root Logical Function'.'Transfer Propulson and Stopping Force' ; 
                    port 'CP 1' : ComponentPort { 
                        @CapellaID { eid = "aea7e594-8d95-4a95-aea4-98381108e1ba"; } 
                        attribute :>> aggregationKind = AggregationKind::UNSET; 
                        attribute :>> isFinal = false; 
                        attribute :>> isAbstract = false; 
                        attribute :>> isDerived = false; 
                        attribute :>> isPartOfKey = false; 
                        attribute :>> isReadOnly = false; 
                        attribute :>> isStatic = false; 
                        attribute :>> kind = ComponentPortKind::FLOW; 
                        attribute :>> isMaxInclusive = false; 
                        attribute :>> isMinInclusive = false; 
                        attribute :>> isOrdered = false; 
                        attribute :>> orientation = OrientationPortKind::INOUT; 
                        attribute :>> isUnique = false; 
                         
                    }  
                    dependency '817afe4f-1c17-470d-8cf4-46ba8efaddad'
                        from '1771b82a-b7d7-4953-8501-1b7279df9c0f'
                        to  'System Analysis'::'Structure'::'Wheels and Tires'::'ffd44d37-8db5-4362-bb9b-270d9ad790c4' { 
                        @TransfoLink { 
                            @CapellaID { eid = "817afe4f-1c17-470d-8cf4-46ba8efaddad"; } 
                        }  
                    }  
                    ref :>> ownedFunctionalAllocation =  ('1771b82a-b7d7-4953-8501-1b7279df9c0f'); 
                     
                }  
                part 'Cockpit' : LogicalComponent { 
                    @CapellaID { eid = "39019b21-ceb8-4d0f-a1d7-90cdb9e9afe3"; } 
                    attribute :>> isAbstract = false; 
                    attribute :>> isActor = true; 
                    attribute :>> isHuman = false; 
                    allocation '5ffd10b4-2927-4e94-b5d7-649f3100b3d4' : ComponentFunctionalAllocation
                        allocate function ::> 'Logical Functions'::'Root Logical Function'.'Split 14'
                        to component ::> 'Structure'::'Cockpit' { 
                        @CapellaID { eid = "5ffd10b4-2927-4e94-b5d7-649f3100b3d4"; } 
                    } 
                    perform 'Logical Functions'::'Root Logical Function'.'Split 14' ; 
                    port 'CP 1' : ComponentPort { 
                        @CapellaID { eid = "4b0d4e4f-3a6d-48b0-adc4-4f621d44179b"; } 
                        attribute :>> aggregationKind = AggregationKind::UNSET; 
                        attribute :>> isFinal = false; 
                        attribute :>> isAbstract = false; 
                        attribute :>> isDerived = false; 
                        attribute :>> isPartOfKey = false; 
                        attribute :>> isReadOnly = false; 
                        attribute :>> isStatic = false; 
                        attribute :>> kind = ComponentPortKind::FLOW; 
                        attribute :>> isMaxInclusive = false; 
                        attribute :>> isMinInclusive = false; 
                        attribute :>> isOrdered = false; 
                        attribute :>> orientation = OrientationPortKind::INOUT; 
                        attribute :>> isUnique = false; 
                         
                    }  
                    dependency 'f5a21e3a-5de1-48d4-9c00-f3576434feec'
                        from '5ffd10b4-2927-4e94-b5d7-649f3100b3d4'
                        to  'System Analysis'::'Structure'::'Cockpit'::'03d91b85-bc82-4451-83da-658475460e43' { 
                        @TransfoLink { 
                            @CapellaID { eid = "f5a21e3a-5de1-48d4-9c00-f3576434feec"; } 
                        }  
                    }  
                    ref :>> ownedFunctionalAllocation =  ('5ffd10b4-2927-4e94-b5d7-649f3100b3d4'); 
                     
                }  
                part 'Environment' : LogicalComponent { 
                    @CapellaID { eid = "aab9c987-d4fe-4165-8caf-16f62232fe03"; } 
                    attribute :>> isAbstract = false; 
                    attribute :>> isActor = true; 
                    attribute :>> isHuman = false; 
                    allocation '875b1712-753e-4045-8923-f40c19b6debc' : ComponentFunctionalAllocation
                        allocate function ::> 'Logical Functions'::'Root Logical Function'.'Provide environmental contitions'
                        to component ::> 'Structure'::'Environment' { 
                        @CapellaID { eid = "875b1712-753e-4045-8923-f40c19b6debc"; } 
                    } 
                    perform 'Logical Functions'::'Root Logical Function'.'Provide environmental contitions' ; 
                    ref :>> ownedFunctionalAllocation =  ('875b1712-753e-4045-8923-f40c19b6debc'); 
                }  
                part 'Rider' : LogicalComponent { 
                    @CapellaID { eid = "dc6006bd-65b5-42c5-8ed0-a7c175630248"; } 
                    attribute :>> isAbstract = false; 
                    attribute :>> isActor = true; 
                    attribute :>> isHuman = false; 
                    allocation 'fba65548-a637-4ccb-9bff-4a554a6501d0' : ComponentFunctionalAllocation
                        allocate function ::> 'Logical Functions'::'Root Logical Function'.'Observe Status'
                        to component ::> 'Structure'::'Rider' { 
                        @CapellaID { eid = "fba65548-a637-4ccb-9bff-4a554a6501d0"; } 
                    } 
                    perform 'Logical Functions'::'Root Logical Function'.'Observe Status' ; 
                    allocation '3440b319-0eb5-4079-b7cc-84c04894eb04' : ComponentFunctionalAllocation
                        allocate function ::> 'Logical Functions'::'Root Logical Function'.'Monitor Diagnostics'
                        to component ::> 'Structure'::'Rider' { 
                        @CapellaID { eid = "3440b319-0eb5-4079-b7cc-84c04894eb04"; } 
                    } 
                    perform 'Logical Functions'::'Root Logical Function'.'Monitor Diagnostics' ; 
                    ref :>> ownedFunctionalAllocation =  ('fba65548-a637-4ccb-9bff-4a554a6501d0',
                    '3440b319-0eb5-4079-b7cc-84c04894eb04'); 
                }  
                part 'a788b476-fc16-48f2-9cb9-ee939f7e85b6' : CPart :> 'Braking System'  { 
                    @CapellaID { eid = "a788b476-fc16-48f2-9cb9-ee939f7e85b6"; } 
                    attribute :>> aggregationKind = AggregationKind::UNSET; 
                    attribute :>> isFinal = false; 
                    attribute :>> isAbstract = false; 
                    attribute :>> isDerived = false; 
                    attribute :>> isPartOfKey = false; 
                    attribute :>> isReadOnly = false; 
                    attribute :>> isStatic = false; 
                    attribute :>> isMaxInclusive = false; 
                    attribute :>> isMinInclusive = false; 
                    attribute :>> isOrdered = false; 
                    attribute :>> isUnique = false; 
                }  
                part 'c08b9a6c-4f8c-4445-afd7-9688f482d247' : CPart :> 'Frame and Suspension'  { 
                    @CapellaID { eid = "c08b9a6c-4f8c-4445-afd7-9688f482d247"; } 
                    attribute :>> aggregationKind = AggregationKind::UNSET; 
                    attribute :>> isFinal = false; 
                    attribute :>> isAbstract = false; 
                    attribute :>> isDerived = false; 
                    attribute :>> isPartOfKey = false; 
                    attribute :>> isReadOnly = false; 
                    attribute :>> isStatic = false; 
                    attribute :>> isMaxInclusive = false; 
                    attribute :>> isMinInclusive = false; 
                    attribute :>> isOrdered = false; 
                    attribute :>> isUnique = false; 
                }  
                part '7984cfbb-55d2-47d0-9c72-f5668d4d323a' : CPart :> 'Wheels and Tires'  { 
                    @CapellaID { eid = "7984cfbb-55d2-47d0-9c72-f5668d4d323a"; } 
                    attribute :>> aggregationKind = AggregationKind::UNSET; 
                    attribute :>> isFinal = false; 
                    attribute :>> isAbstract = false; 
                    attribute :>> isDerived = false; 
                    attribute :>> isPartOfKey = false; 
                    attribute :>> isReadOnly = false; 
                    attribute :>> isStatic = false; 
                    attribute :>> isMaxInclusive = false; 
                    attribute :>> isMinInclusive = false; 
                    attribute :>> isOrdered = false; 
                    attribute :>> isUnique = false; 
                }  
                part 'c951da30-251a-4b19-80db-dda40e2d52c5' : CPart :> 'Cockpit'  { 
                    @CapellaID { eid = "c951da30-251a-4b19-80db-dda40e2d52c5"; } 
                    attribute :>> aggregationKind = AggregationKind::UNSET; 
                    attribute :>> isFinal = false; 
                    attribute :>> isAbstract = false; 
                    attribute :>> isDerived = false; 
                    attribute :>> isPartOfKey = false; 
                    attribute :>> isReadOnly = false; 
                    attribute :>> isStatic = false; 
                    attribute :>> isMaxInclusive = false; 
                    attribute :>> isMinInclusive = false; 
                    attribute :>> isOrdered = false; 
                    attribute :>> isUnique = false; 
                }  
                part 'd5776da9-707a-4bef-b3bc-72ac48566aa0' : CPart :> 'Environment'  { 
                    @CapellaID { eid = "d5776da9-707a-4bef-b3bc-72ac48566aa0"; } 
                    attribute :>> aggregationKind = AggregationKind::UNSET; 
                    attribute :>> isFinal = false; 
                    attribute :>> isAbstract = false; 
                    attribute :>> isDerived = false; 
                    attribute :>> isPartOfKey = false; 
                    attribute :>> isReadOnly = false; 
                    attribute :>> isStatic = false; 
                    attribute :>> isMaxInclusive = false; 
                    attribute :>> isMinInclusive = false; 
                    attribute :>> isOrdered = false; 
                    attribute :>> isUnique = false; 
                }  
                part 'b15dd2e2-08a5-4f40-93cf-2dc51bfbf2f0' : CPart :> 'Rider'  { 
                    @CapellaID { eid = "b15dd2e2-08a5-4f40-93cf-2dc51bfbf2f0"; } 
                    attribute :>> aggregationKind = AggregationKind::UNSET; 
                    attribute :>> isFinal = false; 
                    attribute :>> isAbstract = false; 
                    attribute :>> isDerived = false; 
                    attribute :>> isPartOfKey = false; 
                    attribute :>> isReadOnly = false; 
                    attribute :>> isStatic = false; 
                    attribute :>> isMaxInclusive = false; 
                    attribute :>> isMinInclusive = false; 
                    attribute :>> isOrdered = false; 
                    attribute :>> isUnique = false; 
                }  
                interface '6fa0a7b7-dd0c-4145-9102-062dc488f928' : ComponentExchange 
                    connect source ::> 'Braking System'.'CP 1'
                    to  target ::> 'Frame and Suspension'.'CP 1' { 
                    @CapellaID { eid = "6fa0a7b7-dd0c-4145-9102-062dc488f928"; } 
                    attribute :>> kind = ComponentExchangeKind::FLOW; 
                    attribute :>> interfaceName = "Brake to BS"; 
                    attribute :>> isOriented = false; 
                     
                }  
                interface '5c58928b-ae58-400b-8b4f-81e48b55420e' : ComponentExchange 
                    connect source ::> 'Braking System'.'CP 2'
                    to  target ::> 'Cockpit'.'CP 1' { 
                    @CapellaID { eid = "5c58928b-ae58-400b-8b4f-81e48b55420e"; } 
                    attribute :>> kind = ComponentExchangeKind::FLOW; 
                    attribute :>> interfaceName = "BS - C"; 
                    attribute :>> isOriented = false; 
                     
                }  
                interface '31fc960e-4c80-4720-8259-88a64d674427' : ComponentExchange 
                    connect source ::> 'Braking System'.'CP 3'
                    to  target ::> 'Wheels and Tires'.'CP 1' { 
                    @CapellaID { eid = "31fc960e-4c80-4720-8259-88a64d674427"; } 
                    attribute :>> kind = ComponentExchangeKind::FLOW; 
                    attribute :>> interfaceName = "BS to W"; 
                    attribute :>> isOriented = false; 
                     
                }  
            } 
        } 
        package 'Physical Architecture' {
            @PackageMeta {
                type = "PhysicalArchitecture";
            } 
            @CapellaID { eid = "5b48d190-1293-4358-87c7-16f163edd4fe"; } 
            package 'Physical Functions' {
                @PackageMeta {
                    type = "PhysicalFunctionPkg";
                } 
                @CapellaID { eid = "332aee02-65bf-49a4-9597-f13cff8c24cb"; } 
                action 'Root Physical Function' : PhysicalFunction  { 
                    @CapellaID { eid = "993db05b-a92a-49fc-8582-35f661748999"; } 
                    attribute :>> aggregationKind = AggregationKind::UNSET; 
                    attribute :>> isFinal = false; 
                    attribute :>> isAbstract = false; 
                    attribute :>> isDerived = false; 
                    attribute :>> isPartOfKey = false; 
                    attribute :>> isReadOnly = false; 
                    attribute :>> isStatic = false; 
                    attribute :>> kind = FunctionKind::FUNCTION; 
                    attribute :>> isMaxInclusive = false; 
                    attribute :>> isMinInclusive = false; 
                    attribute :>> isOrdered = false; 
                    attribute :>> isUnique = false; 
                    interface '750015e9-3fa7-4975-b4db-0a4d3c7853ae' : FunctionalExchange 
                        connect source ::> 'Activate Left Brake'.'FOP 1'
                        to target ::> 'Provide Stopping'.'Capture Brake Input'.'Capture Left Brake Input'.'FIP 1' { 
                        @CapellaID { eid = "750015e9-3fa7-4975-b4db-0a4d3c7853ae"; } 
                        attribute :>> isMulticast = false; 
                        attribute :>> isMultireceive = false; 
                        attribute :>> kindOfRate = RateKind::Unspecified; 
                        attribute :>> interfaceName = "Left Brake Control"; 
                         
                        ref :>> exchangedItems =  ('System Analysis'::'Data'::'Force'); 
                    }  
                    interface '420907b8-393a-472d-803b-c3c6e5fad866' : FunctionalExchange 
                        connect source ::> 'Provide Stopping'.'Gather 17'.'FOP 1'
                        to target ::> 'Transfer Propulson and Stopping Force'.'FIP 2' { 
                        @CapellaID { eid = "420907b8-393a-472d-803b-c3c6e5fad866"; } 
                        attribute :>> isMulticast = false; 
                        attribute :>> isMultireceive = false; 
                        attribute :>> kindOfRate = RateKind::Unspecified; 
                        attribute :>> interfaceName = "Stopping Forces"; 
                         
                    }  
                    interface '98b039ea-0f5b-4b4b-bda5-ccb7529d3c36' : FunctionalExchange 
                        connect source ::> 'Provide Stopping'.'Report Status to Rider'.'FOP 1'
                        to target ::> 'Observe Status'.'FIP 1' { 
                        @CapellaID { eid = "98b039ea-0f5b-4b4b-bda5-ccb7529d3c36"; } 
                        attribute :>> isMulticast = false; 
                        attribute :>> isMultireceive = false; 
                        attribute :>> kindOfRate = RateKind::Unspecified; 
                        attribute :>> interfaceName = "Status of Brakes"; 
                         
                    }  
                    interface '3ab52204-b1bd-4f65-902c-cd7f84e8041a' : FunctionalExchange 
                        connect source ::> 'Provide Stopping'.'Transmit Data'.'FOP 1'
                        to target ::> 'Monitor Diagnostics'.'FIP 1' { 
                        @CapellaID { eid = "3ab52204-b1bd-4f65-902c-cd7f84e8041a"; } 
                        attribute :>> isMulticast = false; 
                        attribute :>> isMultireceive = false; 
                        attribute :>> kindOfRate = RateKind::Unspecified; 
                        attribute :>> interfaceName = "Brake Signals"; 
                         
                    }  
                    interface 'a391f04f-edd1-4f0e-947e-5cb015af691e' : FunctionalExchange 
                        connect source ::> 'Provide environmental contitions'.'FOP 1'
                        to target ::> 'Receieve Environment'.'FIP 1' { 
                        @CapellaID { eid = "a391f04f-edd1-4f0e-947e-5cb015af691e"; } 
                        attribute :>> isMulticast = false; 
                        attribute :>> isMultireceive = false; 
                        attribute :>> kindOfRate = RateKind::Unspecified; 
                        attribute :>> interfaceName = "Environment"; 
                         
                    }  
                    interface '4b5f517b-785f-442e-a00a-5c9e0e9b12cf' : FunctionalExchange 
                        connect source ::> 'Provide environmental contitions'.'FOP 2'
                        to target ::> 'Recieve Environment'.'FIP 1' { 
                        @CapellaID { eid = "4b5f517b-785f-442e-a00a-5c9e0e9b12cf"; } 
                        attribute :>> isMulticast = false; 
                        attribute :>> isMultireceive = false; 
                        attribute :>> kindOfRate = RateKind::Unspecified; 
                        attribute :>> interfaceName = "Environment"; 
                         
                    }  
                    interface '63df2372-3d06-4f15-9039-f0652c64c630' : FunctionalExchange 
                        connect source ::> 'Provide environmental contitions'.'FOP 3'
                        to target ::> 'Receive Environment'.'FIP 1' { 
                        @CapellaID { eid = "63df2372-3d06-4f15-9039-f0652c64c630"; } 
                        attribute :>> isMulticast = false; 
                        attribute :>> isMultireceive = false; 
                        attribute :>> kindOfRate = RateKind::Unspecified; 
                        attribute :>> interfaceName = "Environment"; 
                         
                    }  
                    interface 'a2013f87-e48f-4cad-b932-e7b146c5480b' : FunctionalExchange 
                        connect source ::> 'Provide environmental contitions'.'FOP 4'
                        to target ::> 'Receive Environment'.'FIP 1' { 
                        @CapellaID { eid = "a2013f87-e48f-4cad-b932-e7b146c5480b"; } 
                        attribute :>> isMulticast = false; 
                        attribute :>> isMultireceive = false; 
                        attribute :>> kindOfRate = RateKind::Unspecified; 
                        attribute :>> interfaceName = "Environment"; 
                         
                    }  
                    interface 'b280653f-d17c-4abf-9253-cc14557b15fc' : FunctionalExchange 
                        connect source ::> 'Activate Right Brake'.'FOP 3'
                        to target ::> 'Provide Stopping'.'Capture Brake Input'.'Capture Right Brake Input'.'FIP 1' { 
                        @CapellaID { eid = "b280653f-d17c-4abf-9253-cc14557b15fc"; } 
                        attribute :>> isMulticast = false; 
                        attribute :>> isMultireceive = false; 
                        attribute :>> kindOfRate = RateKind::Unspecified; 
                        attribute :>> interfaceName = "Right Brake Control"; 
                    }  
                    interface 'e80c3b1b-d6e2-4f37-8569-240366dbeb29' : FunctionalExchange 
                        connect source ::> 'Maintain Fluid'.'FOP 1'
                        to target ::> 'Provide Stopping'.'Modulate Input Forces'.'Store Left Fluid'.'FIP 1' { 
                        @CapellaID { eid = "e80c3b1b-d6e2-4f37-8569-240366dbeb29"; } 
                        attribute :>> isMulticast = false; 
                        attribute :>> isMultireceive = false; 
                        attribute :>> kindOfRate = RateKind::Unspecified; 
                        attribute :>> interfaceName = "Flius"; 
                    }  
                    interface '31a21d13-7838-431e-a731-ece4100254a3' : FunctionalExchange 
                        connect source ::> 'Maintain Fluid'.'FOP 2'
                        to target ::> 'Provide Stopping'.'Modulate Input Forces'.'Store Right Fluid'.'FIP 1' { 
                        @CapellaID { eid = "31a21d13-7838-431e-a731-ece4100254a3"; } 
                        attribute :>> isMulticast = false; 
                        attribute :>> isMultireceive = false; 
                        attribute :>> kindOfRate = RateKind::Unspecified; 
                        attribute :>> interfaceName = "Fuild"; 
                    }  
                    interface '5774f3bf-22b4-463d-a803-453d3a2a3fe8' : FunctionalExchange 
                        connect source ::> 'Support'.'FOP 2'
                        to target ::> 'Receive Support'.'FIP 1' { 
                        @CapellaID { eid = "5774f3bf-22b4-463d-a803-453d3a2a3fe8"; } 
                        attribute :>> isMulticast = false; 
                        attribute :>> isMultireceive = false; 
                        attribute :>> kindOfRate = RateKind::Unspecified; 
                        attribute :>> interfaceName = "FunctionalExchange 12"; 
                    }  
                    interface '544adc36-f23b-4c03-85d2-b013fe729090' : FunctionalExchange 
                        connect source ::> 'Support'.'FOP 2'
                        to target ::> 'Receive Support'.'FIP 1' { 
                        @CapellaID { eid = "544adc36-f23b-4c03-85d2-b013fe729090"; } 
                        attribute :>> isMulticast = false; 
                        attribute :>> isMultireceive = false; 
                        attribute :>> kindOfRate = RateKind::Unspecified; 
                        attribute :>> interfaceName = "FunctionalExchange 13"; 
                    }  
                    interface 'afa54f56-1d6b-4081-9c93-06f59e51bc72' : FunctionalExchange 
                        connect source ::> 'Support'.'FOP 1'
                        to target ::> 'Receive Support'.'FIP 1' { 
                        @CapellaID { eid = "afa54f56-1d6b-4081-9c93-06f59e51bc72"; } 
                        attribute :>> isMulticast = false; 
                        attribute :>> isMultireceive = false; 
                        attribute :>> kindOfRate = RateKind::Unspecified; 
                        attribute :>> interfaceName = "FunctionalExchange 14"; 
                    }  
                    interface 'a11b0ffa-3a7b-4a25-8682-2b7f66c298f8' : FunctionalExchange 
                        connect source ::> 'Support'.'FOP 1'
                        to target ::> 'Receive Support'.'FIP 1' { 
                        @CapellaID { eid = "a11b0ffa-3a7b-4a25-8682-2b7f66c298f8"; } 
                        attribute :>> isMulticast = false; 
                        attribute :>> isMultireceive = false; 
                        attribute :>> kindOfRate = RateKind::Unspecified; 
                        attribute :>> interfaceName = "FunctionalExchange 15"; 
                    }  
                    interface 'a7e608a2-ed67-4e3b-b889-6781f6976309' : FunctionalExchange 
                        connect source ::> 'Support'.'FOP 1'
                        to target ::> 'Receive Support'.'FIP 1' { 
                        @CapellaID { eid = "a7e608a2-ed67-4e3b-b889-6781f6976309"; } 
                        attribute :>> isMulticast = false; 
                        attribute :>> isMultireceive = false; 
                        attribute :>> kindOfRate = RateKind::Unspecified; 
                        attribute :>> interfaceName = "FunctionalExchange 16"; 
                    }  
                    interface '0252f398-9b30-4da9-89f5-f950d62c50d1' : FunctionalExchange 
                        connect source ::> 'Support'.'FOP 1'
                        to target ::> 'Receive Support'.'FIP 1' { 
                        @CapellaID { eid = "0252f398-9b30-4da9-89f5-f950d62c50d1"; } 
                        attribute :>> isMulticast = false; 
                        attribute :>> isMultireceive = false; 
                        attribute :>> kindOfRate = RateKind::Unspecified; 
                        attribute :>> interfaceName = "FunctionalExchange 17"; 
                    }  
                    dependency 'cf4699d8-8564-4359-99f7-f940f1d3d246'
                        from 'Ride Mountain Trails'::'750be5d0-570f-4616-87f8-20dce1ddec3f'
                        to  'Logical Architecture'::'Logical Functions'::'Root Logical Function'::'Ride Mountain Trails'::'60424c0f-3513-4e4f-85c3-d6d71f671827' { 
                        @TransfoLink { 
                            @CapellaID { eid = "cf4699d8-8564-4359-99f7-f940f1d3d246"; } 
                        }  
                    }  
                    dependency '87263217-c55a-489b-8e32-ea783d7b3a6a'
                        from 'Ride Mountain Trails'::'3255933c-f1ba-452c-bb38-eeba9fb74915'
                        to  'Logical Architecture'::'Logical Functions'::'Root Logical Function'::'Ride Mountain Trails'::'ca8144eb-8bb5-4200-af03-1752ed9a4d34' { 
                        @TransfoLink { 
                            @CapellaID { eid = "87263217-c55a-489b-8e32-ea783d7b3a6a"; } 
                        }  
                    }  
                    dependency '44e7d4af-5491-4447-b89f-81016024fa8f'
                        from 'Ride Mountain Trails'::'25889a29-f456-4c24-b41e-5347ec4b3e83'
                        to  'Logical Architecture'::'Logical Functions'::'Root Logical Function'::'Ride Mountain Trails'::'02a36466-0068-48d8-b1a6-1ca6702ae7f7' { 
                        @TransfoLink { 
                            @CapellaID { eid = "44e7d4af-5491-4447-b89f-81016024fa8f"; } 
                        }  
                    }  
                    dependency 'f2c61431-22db-4f9e-ba43-ae111a46f6fb'
                        from 'Ride Mountain Trails'::'41a1d133-a8b6-4c9e-bc4d-a0ab85e8c99c'
                        to  'Logical Architecture'::'Logical Functions'::'Root Logical Function'::'Ride Mountain Trails'::'a6529817-9c0f-4a7f-a1c6-752e1f8bc2e8' { 
                        @TransfoLink { 
                            @CapellaID { eid = "f2c61431-22db-4f9e-ba43-ae111a46f6fb"; } 
                        }  
                    }  
                    dependency '7ee3ad8c-71f0-4f7d-ab3d-4f474d6aea46'
                        from 'Ride Mountain Trails'::'aabec8cd-9fca-41f2-a9ef-cbc7b53bd880'
                        to  'Logical Architecture'::'Logical Functions'::'Root Logical Function'::'Ride Mountain Trails'::'ef1a6e13-3492-4eed-8e52-aef02fdeb0a5' { 
                        @TransfoLink { 
                            @CapellaID { eid = "7ee3ad8c-71f0-4f7d-ab3d-4f474d6aea46"; } 
                        }  
                    }  
                    dependency '8828f2c0-e535-4aef-96dc-9993588a1753'
                        from 'Front Brake Stopping'::'93961098-013d-4cd8-a4f7-ec4813288500'
                        to  'Logical Architecture'::'Logical Functions'::'Root Logical Function'::'Stopping Hydaulic'::'2353f9d0-226f-4e61-bb30-ad9d5178d532' { 
                        @TransfoLink { 
                            @CapellaID { eid = "8828f2c0-e535-4aef-96dc-9993588a1753"; } 
                        }  
                    }  
                    dependency 'de86a8ea-ed97-4f89-ba13-65593a103ae9'
                        from 'Front Brake Stopping'::'391fed43-ec7d-4ba0-beb0-f3f97c517a81'
                        to  'Logical Architecture'::'Logical Functions'::'Root Logical Function'::'Stopping Hydaulic'::'b6a2dbd2-b982-41b0-9004-aa9c8c39fb0e' { 
                        @TransfoLink { 
                            @CapellaID { eid = "de86a8ea-ed97-4f89-ba13-65593a103ae9"; } 
                        }  
                    }  
                    dependency 'fc7218c5-c9ca-4dd1-bf48-4909104eac32'
                        from 'Front Brake Stopping'::'ce8a4b14-aeb3-4128-b298-b32fe1728f7a'
                        to  'Logical Architecture'::'Logical Functions'::'Root Logical Function'::'Stopping Hydaulic'::'6dd33ad9-ffae-4e1c-ac02-7ceb3683d304' { 
                        @TransfoLink { 
                            @CapellaID { eid = "fc7218c5-c9ca-4dd1-bf48-4909104eac32"; } 
                        }  
                    }  
                    dependency '91410bb5-570c-4073-8384-0a0e5cbe5934'
                        from 'Front Brake Stopping'::'7f17b1eb-a940-456e-b215-e40e72842f91'
                        to  'Logical Architecture'::'Logical Functions'::'Root Logical Function'::'Stopping Hydaulic'::'36269e84-526e-40a4-b573-26fee1a670e6' { 
                        @TransfoLink { 
                            @CapellaID { eid = "91410bb5-570c-4073-8384-0a0e5cbe5934"; } 
                        }  
                    }  
                    dependency '8dcadd3f-ab9f-425d-9571-373a6f7a9fee'
                        from 'Front Brake Stopping'::'090e3d03-6458-463d-a434-1164a59c8ec6'
                        to  'Logical Architecture'::'Logical Functions'::'Root Logical Function'::'Stopping Hydaulic'::'cdbb0539-30d4-4ad9-9995-8a19d9d593fd' { 
                        @TransfoLink { 
                            @CapellaID { eid = "8dcadd3f-ab9f-425d-9571-373a6f7a9fee"; } 
                        }  
                    }  
                    dependency '4b70aadb-20aa-41ce-8512-f9527098205d'
                        from 'Front Brake Stopping'::'31a0116f-3cbc-4542-a543-fdcf53056a18'
                        to  'Logical Architecture'::'Logical Functions'::'Root Logical Function'::'Stopping Hydaulic'::'bfbe5b40-052e-4d71-ad39-3a959cbe8e03' { 
                        @TransfoLink { 
                            @CapellaID { eid = "4b70aadb-20aa-41ce-8512-f9527098205d"; } 
                        }  
                    }  
                    dependency 'b92423f5-59dc-4b3a-bfea-cf273754cb68'
                        from 'Front Brake Stopping'::'efd33e08-cccb-4bd5-9f0b-b5feb37426b9'
                        to  'Logical Architecture'::'Logical Functions'::'Root Logical Function'::'Stopping Hydaulic'::'b4c72c5e-f5c3-48c4-bac8-505f4d14fec7' { 
                        @TransfoLink { 
                            @CapellaID { eid = "b92423f5-59dc-4b3a-bfea-cf273754cb68"; } 
                        }  
                    }  
                    action 'Front Brake Stopping' : FunctionalChain  { 
                        @CapellaID { eid = "875fde31-2c11-4762-9464-66ff4d4ad0f8"; } 
                        attribute :>> kind = FunctionalChainKind::SIMPLE; 
                        connection '93961098-013d-4cd8-a4f7-ec4813288500' : FunctionalChainInvolvementLink 
                            connect source ::> '939be199-58f7-4380-9ebe-aae731c4d0f0'
                            to  target ::> '1e12113a-4845-4ea9-97a2-8f976513ff05' {

                                ref :>> involved = 'Provide Stopping'.'7e92428b-766c-4404-b3c6-0658f5673911';

                            } 
                        connection '391fed43-ec7d-4ba0-beb0-f3f97c517a81' : FunctionalChainInvolvementLink 
                            connect source ::> '1e12113a-4845-4ea9-97a2-8f976513ff05'
                            to  target ::> '5ab5ee0a-efde-4875-a90a-47364f157f74' {

                                ref :>> involved = 'Provide Stopping'.'5129235a-4238-4b6e-9dcc-eceefd40f6ba';

                            } 
                        connection 'ce8a4b14-aeb3-4128-b298-b32fe1728f7a' : FunctionalChainInvolvementLink 
                            connect source ::> '5ab5ee0a-efde-4875-a90a-47364f157f74'
                            to  target ::> '3dac0935-4705-4005-9504-1682478ec205' {

                                ref :>> involved = 'Provide Stopping'.'0ead8d1e-cff5-435a-99f7-842f661bd9c7';

                            } 
                        connection '7f17b1eb-a940-456e-b215-e40e72842f91' : FunctionalChainInvolvementLink 
                            connect source ::> '3dac0935-4705-4005-9504-1682478ec205'
                            to  target ::> 'db42159d-257c-4ade-a057-1e0a2415596d' {

                                ref :>> involved = 'Provide Stopping'.'b00df868-161f-49af-a1c9-a68c2fad0003';

                            } 
                        connection '090e3d03-6458-463d-a434-1164a59c8ec6' : FunctionalChainInvolvementLink 
                            connect source ::> 'db42159d-257c-4ade-a057-1e0a2415596d'
                            to  target ::> 'c818df76-6d4c-4554-b701-55f4f083e6ed' {

                                ref :>> involved = 'Provide Stopping'.'b80956c9-3756-4597-a12e-d51a8b323abb';

                            } 
                        connection '31a0116f-3cbc-4542-a543-fdcf53056a18' : FunctionalChainInvolvementLink 
                            connect source ::> 'c818df76-6d4c-4554-b701-55f4f083e6ed'
                            to  target ::> 'bde340d3-76c0-4b8c-9585-cf74990ac8f6' {

                                ref :>> involved = 'Provide Stopping'.'e71a14bb-0728-41e8-8d08-74aea00a35b9';

                            } 
                        connection 'efd33e08-cccb-4bd5-9f0b-b5feb37426b9' : FunctionalChainInvolvementLink 
                            connect source ::> 'bde340d3-76c0-4b8c-9585-cf74990ac8f6'
                            to  target ::> '9d0bf0a1-58b4-4b46-ac98-d3d6190af08b' {

                                ref :>> involved = 'Provide Stopping'.'0cb635b8-424c-43a2-bd07-ebc293865d01';

                            } 
                        ref action '939be199-58f7-4380-9ebe-aae731c4d0f0' = 'Provide Stopping'.'Capture Brake Input'.'Capture Left Brake Input'; 
                        ref action '1e12113a-4845-4ea9-97a2-8f976513ff05' = 'Provide Stopping'.'Modulate Input Forces'.'Modulate Left Input Force'; 
                        ref action '5ab5ee0a-efde-4875-a90a-47364f157f74' = 'Provide Stopping'.'Transmit Force'.'Transmit Left Force'; 
                        ref action '3dac0935-4705-4005-9504-1682478ec205' = 'Provide Stopping'.'Transmit Force '.'Transmit LeftForce'; 
                        ref action 'db42159d-257c-4ade-a057-1e0a2415596d' = 'Provide Stopping'.'Receive Force'.'Receive Front Force'; 
                        ref action 'c818df76-6d4c-4554-b701-55f4f083e6ed' = 'Provide Stopping'.'Amplify Force'.'Amplify Front Force'; 
                        ref action 'bde340d3-76c0-4b8c-9585-cf74990ac8f6' = 'Provide Stopping'.'Position Pads'.'Position Front Right Pad'; 
                        ref action '9d0bf0a1-58b4-4b46-ac98-d3d6190af08b' = 'Provide Stopping'.'Friction to Rotors'.'Convert Friction Force to Stopping Torque'; 
                        ref action 'b0fab751-f4d8-4bee-afdc-773c9204296f' = 'Provide Stopping'.'Position Pads'.'Position Front Left pad'; 
                        connection '2b9c60d9-a3e8-4482-bc84-b0859ee964c4' : FunctionalChainInvolvementLink 
                            connect source ::> 'c818df76-6d4c-4554-b701-55f4f083e6ed'
                            to  target ::> 'b0fab751-f4d8-4bee-afdc-773c9204296f' {

                                ref :>> involved = 'Provide Stopping'.'763a580a-732f-4649-8b96-377bdd7a9832';

                            } 
                        connection '4673c377-db00-4eeb-9cb8-221ccac34f7b' : FunctionalChainInvolvementLink 
                            connect source ::> 'b0fab751-f4d8-4bee-afdc-773c9204296f'
                            to  target ::> '9d0bf0a1-58b4-4b46-ac98-d3d6190af08b' {

                                ref :>> involved = 'Provide Stopping'.'395b900a-d34f-4be7-80c8-2c6afe562246';

                            } 
                         
                    }  
                    action 'Powering' : FunctionalChain  { 
                        @CapellaID { eid = "c47f3d52-7971-4961-bd67-dbc3b1f57527"; } 
                        attribute :>> kind = FunctionalChainKind::SIMPLE; 
                         
                    }  
                    action 'Steering' : FunctionalChain  { 
                        @CapellaID { eid = "43c3ac65-73b8-4160-85b8-48c61c12d1d7"; } 
                        attribute :>> kind = FunctionalChainKind::SIMPLE; 
                         
                    }  
                    action 'Shifting' : FunctionalChain  { 
                        @CapellaID { eid = "fc4c6785-83ef-4660-9c8a-f1ade0cda527"; } 
                        attribute :>> kind = FunctionalChainKind::SIMPLE; 
                         
                    }  
                    action 'Ride Mountain Trails' : FunctionalChain  { 
                        @CapellaID { eid = "40bb2473-4f7d-48f7-8793-f13fe9cbd9ad"; } 
                        attribute :>> kind = FunctionalChainKind::SIMPLE; 
                        ref action '750be5d0-570f-4616-87f8-20dce1ddec3f' = 'Front Brake Stopping'; 
                        ref action '3255933c-f1ba-452c-bb38-eeba9fb74915' = 'Powering'; 
                        ref action '25889a29-f456-4c24-b41e-5347ec4b3e83' = 'Steering'; 
                        ref action '41a1d133-a8b6-4c9e-bc4d-a0ab85e8c99c' = 'Shifting'; 
                        ref action 'aabec8cd-9fca-41f2-a9ef-cbc7b53bd880' = 'Provide Comfort'; 
                        ref action 'c30f83f1-ffea-4a74-be94-74003dfee517' = 'Provide Stopping'.'Gather 17'; 
                        connection '2a272035-1173-43e1-98b2-73f3f94f6a97' : FunctionalChainInvolvementLink 
                            connect source ::> 'Front Brake Stopping'.'9d0bf0a1-58b4-4b46-ac98-d3d6190af08b'
                            to  target ::> 'c30f83f1-ffea-4a74-be94-74003dfee517' {

                                ref :>> involved = 'Provide Stopping'.'5a9d246f-8388-44ae-b373-e150a4e822a6';

                            } 
                        ref action '76650e8f-4efb-46cb-994e-b115df04b58c' = 'Transfer Propulson and Stopping Force'; 
                        connection '7a3b4b16-9016-4dbc-8e0c-e3f8798e485a' : FunctionalChainInvolvementLink 
                            connect source ::> 'c30f83f1-ffea-4a74-be94-74003dfee517'
                            to  target ::> '76650e8f-4efb-46cb-994e-b115df04b58c' {

                                ref :>> involved = '420907b8-393a-472d-803b-c3c6e5fad866';

                            } 
                        ref action 'a97025e8-247a-48c9-a28a-e966b803cef1' = 'Provide Stopping'.'Modulate Input Forces'.'Rear Brake Stopping'; 
                        connection '066740dd-f27d-4912-957c-2d4829df161c' : FunctionalChainInvolvementLink 
                            connect source ::> 'Provide Stopping'.'Modulate Input Forces'.'Rear Brake Stopping'.'43fe5272-215b-4274-819e-6c0731a206f9'
                            to  target ::> 'c30f83f1-ffea-4a74-be94-74003dfee517' {

                                ref :>> involved = 'Provide Stopping'.'56903f47-249d-4c35-aef5-179a101b5b94';

                            } 
                        ref action 'f2a1bf0d-6eec-49bf-a142-2897132102ba' = 'Support'; 
                        connection 'b4eadc31-482e-4016-b09c-de133d3f1cc1' : FunctionalChainInvolvementLink 
                            connect source ::> 'd8200b54-5a81-463a-bb92-4fede3c25356'
                            to  target ::> 'Front Brake Stopping'.'939be199-58f7-4380-9ebe-aae731c4d0f0' {

                                ref :>> involved = '750015e9-3fa7-4975-b4db-0a4d3c7853ae';

                            } 
                        connection '6a61566c-927b-44e1-8052-0d41383aca21' : FunctionalChainInvolvementLink 
                            connect source ::> '5625640c-cfb6-4503-b179-65ca8658ad99'
                            to  target ::> 'Provide Stopping'.'Modulate Input Forces'.'Rear Brake Stopping'.'7ac701f8-afae-45bc-8347-f2f44f5ecd65' {

                                ref :>> involved = 'b280653f-d17c-4abf-9253-cc14557b15fc';

                            } 
                        ref action '5625640c-cfb6-4503-b179-65ca8658ad99' = 'Activate Right Brake'; 
                        ref action 'd8200b54-5a81-463a-bb92-4fede3c25356' = 'Activate Left Brake'; 
                         
                    }  
                    action 'Provide Comfort' : FunctionalChain  { 
                        @CapellaID { eid = "8867dd59-c482-4654-b591-1fb6c6394b59"; } 
                        attribute :>> kind = FunctionalChainKind::SIMPLE; 
                         
                    }  
                    action 'Rear Brake Stopping' : FunctionalChain  { 
                        @CapellaID { eid = "10937914-4953-41c4-998c-6fe7d9dfd023"; } 
                        attribute :>> kind = FunctionalChainKind::SIMPLE; 
                        ref action '2127e835-0aba-4a46-90ac-e1dd3ecde328' = 'Provide Stopping'.'Capture Brake Input'.'Capture Right Brake Input'; 
                        connection '7aed86a6-f6aa-4fbe-87fa-b52c52653e47' : FunctionalChainInvolvementLink 
                            connect source ::> '2127e835-0aba-4a46-90ac-e1dd3ecde328'
                            to  target ::> '9225c760-e151-43a8-9eab-af64ca86e6ce' {

                                ref :>> involved = 'Provide Stopping'.'107d695a-7947-436c-ab45-f32601351120';

                            } 
                        ref action '9225c760-e151-43a8-9eab-af64ca86e6ce' = 'Provide Stopping'.'Modulate Input Forces'.'Modulate Right Input Force'; 
                        connection '40847975-89ef-4b6c-8e3c-75c82693c2fd' : FunctionalChainInvolvementLink 
                            connect source ::> '9225c760-e151-43a8-9eab-af64ca86e6ce'
                            to  target ::> '22825993-4be7-4613-84aa-1bcd1c641ecc' {

                                ref :>> involved = 'Provide Stopping'.'22245a58-6a60-4231-a8b0-a5c1bd2615a0';

                            } 
                        ref action '22825993-4be7-4613-84aa-1bcd1c641ecc' = 'Provide Stopping'.'Transmit Force'.'Transmit Right Force'; 
                        ref action 'adf0ca70-ccc2-4669-ba97-3f2985dceabb' = 'Provide Stopping'.'Transmit Force '.'Tranmit Right Force'; 
                        connection '651d8786-53db-4cc7-9580-6d1558bb91ef' : FunctionalChainInvolvementLink 
                            connect source ::> '22825993-4be7-4613-84aa-1bcd1c641ecc'
                            to  target ::> 'adf0ca70-ccc2-4669-ba97-3f2985dceabb' {

                                ref :>> involved = 'Provide Stopping'.'3efa0745-98a6-45df-afc5-407fc318896e';

                            } 
                        ref action 'f0d577e1-b401-4f53-ba36-b80c543dd18f' = 'Provide Stopping'.'Receive Force'.'Receive Rear Force'; 
                        connection 'f185fbf2-42f2-409e-92fd-cc4b681176db' : FunctionalChainInvolvementLink 
                            connect source ::> 'adf0ca70-ccc2-4669-ba97-3f2985dceabb'
                            to  target ::> 'f0d577e1-b401-4f53-ba36-b80c543dd18f' {

                                ref :>> involved = 'Provide Stopping'.'831291ae-5f9e-4271-9d02-4d652c19176e';

                            } 
                        ref action '1b24a3da-6625-4e38-b12c-ded89fe32847' = 'Provide Stopping'.'Amplify Force'.'Amplify Rear Force'; 
                        connection 'a96fe751-6c08-4b4d-b2a4-aefdc66bed36' : FunctionalChainInvolvementLink 
                            connect source ::> 'f0d577e1-b401-4f53-ba36-b80c543dd18f'
                            to  target ::> '1b24a3da-6625-4e38-b12c-ded89fe32847' {

                                ref :>> involved = 'Provide Stopping'.'457087c1-dfd6-47b1-93ab-d3b07aaffd96';

                            } 
                        ref action '9baa6899-fbd9-4908-8a11-94e5ea8c8e42' = 'Provide Stopping'.'Position Pads'.'Position Rear Right Pad '; 
                        connection '583d9f6a-cf4b-44c7-9dbf-f1e0bdcacc8b' : FunctionalChainInvolvementLink 
                            connect source ::> '1b24a3da-6625-4e38-b12c-ded89fe32847'
                            to  target ::> '9baa6899-fbd9-4908-8a11-94e5ea8c8e42' {

                                ref :>> involved = 'Provide Stopping'.'eb93c1e9-f8f6-49d2-8865-be38b83fc78d';

                            } 
                        ref action 'bfdf12f3-6711-4639-b32a-eba683498cbc' = 'Provide Stopping'.'Position Pads'.'Position Rear Left Pad'; 
                        connection 'ce4cfacb-f38f-4456-989b-1972eab56ac5' : FunctionalChainInvolvementLink 
                            connect source ::> '1b24a3da-6625-4e38-b12c-ded89fe32847'
                            to  target ::> 'bfdf12f3-6711-4639-b32a-eba683498cbc' {

                                ref :>> involved = 'Provide Stopping'.'6fa1b1fd-8afc-4529-a200-b49b1c88f45f';

                            } 
                        ref action '043403e0-51e0-4483-9780-6f1f58bcb343' = 'Provide Stopping'.'Friction to Rotors'.'Convert Friction Force to Stopping Torque'; 
                        connection 'd3cf2da2-dc54-41bb-ae71-d2e9c6fb09b4' : FunctionalChainInvolvementLink 
                            connect source ::> '9baa6899-fbd9-4908-8a11-94e5ea8c8e42'
                            to  target ::> '043403e0-51e0-4483-9780-6f1f58bcb343' {

                                ref :>> involved = 'Provide Stopping'.'0aeaacf1-afe0-4d37-b005-cee78cf95e96';

                            } 
                        connection 'b0603c08-474d-4ff5-8b18-587141e34e07' : FunctionalChainInvolvementLink 
                            connect source ::> 'bfdf12f3-6711-4639-b32a-eba683498cbc'
                            to  target ::> '043403e0-51e0-4483-9780-6f1f58bcb343' {

                                ref :>> involved = 'Provide Stopping'.'bfc10a00-2b64-45c7-a123-a1ba15555a46';

                            } 
                    }  
                    action 'Provide Stopping' : PhysicalFunction  { 
                        @CapellaID { eid = "1144238c-92a3-4f96-91e0-9ba80a3de61c"; } 
                        attribute :>> aggregationKind = AggregationKind::UNSET; 
                        attribute :>> isFinal = false; 
                        attribute :>> isAbstract = false; 
                        attribute :>> isDerived = false; 
                        attribute :>> isPartOfKey = false; 
                        attribute :>> isReadOnly = false; 
                        attribute :>> isStatic = false; 
                        attribute :>> kind = FunctionKind::FUNCTION; 
                        attribute :>> isMaxInclusive = false; 
                        attribute :>> isMinInclusive = false; 
                        attribute :>> isOrdered = false; 
                        attribute :>> isUnique = false; 
                        interface '7e92428b-766c-4404-b3c6-0658f5673911' : FunctionalExchange 
                            connect source ::> 'Capture Brake Input'.'Capture Left Brake Input'.'FOP 1'
                            to target ::> 'Modulate Input Forces'.'Modulate Left Input Force'.'FIP 1' { 
                            @CapellaID { eid = "7e92428b-766c-4404-b3c6-0658f5673911"; } 
                            attribute :>> isMulticast = false; 
                            attribute :>> isMultireceive = false; 
                            attribute :>> kindOfRate = RateKind::Unspecified; 
                            attribute :>> interfaceName = "Force"; 
                             
                        }  
                        interface 'bf2cb91a-08b2-4348-a4e5-00b88a02f063' : FunctionalExchange 
                            connect source ::> 'Modulate Input Forces'.'Modulate Left Input Force'.'FOP 1'
                            to target ::> 'Translate Mechanical Action to Signal'.'Translate Mechanical Left Action to Signal '.'FIP 1' { 
                            @CapellaID { eid = "bf2cb91a-08b2-4348-a4e5-00b88a02f063"; } 
                            attribute :>> isMulticast = false; 
                            attribute :>> isMultireceive = false; 
                            attribute :>> kindOfRate = RateKind::Unspecified; 
                            attribute :>> interfaceName = "Modulated Force"; 
                             
                        }  
                        interface '30d2a0d9-8bf3-44b1-9511-224321fb4b88' : FunctionalExchange 
                            connect source ::> 'Translate Mechanical Action to Signal'.'Translate Mechanical Left Action to Signal '.'FOP 1'
                            to target ::> 'Tranmit Signal'.'Transmit Left Signal'.'FIP 1' { 
                            @CapellaID { eid = "30d2a0d9-8bf3-44b1-9511-224321fb4b88"; } 
                            attribute :>> isMulticast = false; 
                            attribute :>> isMultireceive = false; 
                            attribute :>> kindOfRate = RateKind::Unspecified; 
                            attribute :>> interfaceName = "Force Signal"; 
                             
                        }  
                        interface '5129235a-4238-4b6e-9dcc-eceefd40f6ba' : FunctionalExchange 
                            connect source ::> 'Modulate Input Forces'.'Modulate Left Input Force'.'FOP 2'
                            to target ::> 'Transmit Force'.'Transmit Left Force'.'FIP 1' { 
                            @CapellaID { eid = "5129235a-4238-4b6e-9dcc-eceefd40f6ba"; } 
                            attribute :>> isMulticast = false; 
                            attribute :>> isMultireceive = false; 
                            attribute :>> kindOfRate = RateKind::Unspecified; 
                            attribute :>> interfaceName = "Modulated Force"; 
                             
                        }  
                        interface '0ead8d1e-cff5-435a-99f7-842f661bd9c7' : FunctionalExchange 
                            connect source ::> 'Transmit Force'.'Transmit Left Force'.'FOP 1'
                            to target ::> 'Transmit Force '.'Transmit LeftForce'.'FIP 1' { 
                            @CapellaID { eid = "0ead8d1e-cff5-435a-99f7-842f661bd9c7"; } 
                            attribute :>> isMulticast = false; 
                            attribute :>> isMultireceive = false; 
                            attribute :>> kindOfRate = RateKind::Unspecified; 
                            attribute :>> interfaceName = "Modulated Force"; 
                             
                        }  
                        interface 'f208f5b7-0c8a-495e-9caa-080b65f02a67' : FunctionalExchange 
                            connect source ::> 'Tranmit Signal'.'Transmit Left Signal'.'FOP 1'
                            to target ::> 'Transmit Signal'.'Transmit Left Signal'.'FIP 1' { 
                            @CapellaID { eid = "f208f5b7-0c8a-495e-9caa-080b65f02a67"; } 
                            attribute :>> isMulticast = false; 
                            attribute :>> isMultireceive = false; 
                            attribute :>> kindOfRate = RateKind::Unspecified; 
                            attribute :>> interfaceName = "Force Signal"; 
                             
                        }  
                        interface 'f0f1f71e-bb6c-450c-acf2-40d8e1c108e1' : FunctionalExchange 
                            connect source ::> 'Tranmit Signal'.'FOP 2'
                            to target ::> 'Provide Backup'.'FIP 1' { 
                            @CapellaID { eid = "f0f1f71e-bb6c-450c-acf2-40d8e1c108e1"; } 
                            attribute :>> isMulticast = false; 
                            attribute :>> isMultireceive = false; 
                            attribute :>> kindOfRate = RateKind::Unspecified; 
                            attribute :>> interfaceName = "FunctionalExchange 7"; 
                        }  
                        interface 'b00df868-161f-49af-a1c9-a68c2fad0003' : FunctionalExchange 
                            connect source ::> 'Transmit Force '.'Transmit LeftForce'.'FOP 1'
                            to target ::> 'Receive Force'.'Receive Front Force'.'FIP 1' { 
                            @CapellaID { eid = "b00df868-161f-49af-a1c9-a68c2fad0003"; } 
                            attribute :>> isMulticast = false; 
                            attribute :>> isMultireceive = false; 
                            attribute :>> kindOfRate = RateKind::Unspecified; 
                            attribute :>> interfaceName = "Modulated Force"; 
                             
                        }  
                        interface 'b80956c9-3756-4597-a12e-d51a8b323abb' : FunctionalExchange 
                            connect source ::> 'Receive Force'.'Receive Front Force'.'FOP 1'
                            to target ::> 'Amplify Force'.'Amplify Front Force'.'FIP 1' { 
                            @CapellaID { eid = "b80956c9-3756-4597-a12e-d51a8b323abb"; } 
                            attribute :>> isMulticast = false; 
                            attribute :>> isMultireceive = false; 
                            attribute :>> kindOfRate = RateKind::Unspecified; 
                            attribute :>> interfaceName = "Modulated Force"; 
                             
                        }  
                        interface 'e71a14bb-0728-41e8-8d08-74aea00a35b9' : FunctionalExchange 
                            connect source ::> 'Amplify Force'.'Amplify Front Force'.'FOP 1'
                            to target ::> 'Position Pads'.'Position Front Right Pad'.'FIP 1' { 
                            @CapellaID { eid = "e71a14bb-0728-41e8-8d08-74aea00a35b9"; } 
                            attribute :>> isMulticast = false; 
                            attribute :>> isMultireceive = false; 
                            attribute :>> kindOfRate = RateKind::Unspecified; 
                            attribute :>> interfaceName = "Amplified Force"; 
                             
                        }  
                        interface '0cb635b8-424c-43a2-bd07-ebc293865d01' : FunctionalExchange 
                            connect source ::> 'Position Pads'.'Position Front Right Pad'.'FOP 1'
                            to target ::> 'Friction to Rotors'.'Convert Friction Force to Stopping Torque'.'FIP 1' { 
                            @CapellaID { eid = "0cb635b8-424c-43a2-bd07-ebc293865d01"; } 
                            attribute :>> isMulticast = false; 
                            attribute :>> isMultireceive = false; 
                            attribute :>> kindOfRate = RateKind::Unspecified; 
                            attribute :>> interfaceName = "Pad Force"; 
                             
                        }  
                        interface 'e46534c7-f2ea-4987-a54e-1e5284ceac34' : FunctionalExchange 
                            connect source ::> 'Receive Signal'.'Receive Left Signal'.'FOP 1'
                            to target ::> 'Amplify Force'.'Amplify Left Signal'.'FIP 1' { 
                            @CapellaID { eid = "e46534c7-f2ea-4987-a54e-1e5284ceac34"; } 
                            attribute :>> isMulticast = false; 
                            attribute :>> isMultireceive = false; 
                            attribute :>> kindOfRate = RateKind::Unspecified; 
                            attribute :>> interfaceName = "Force Signal"; 
                             
                        }  
                        interface '101a79b8-528c-4a65-ac23-952035322ae9' : FunctionalExchange 
                            connect source ::> 'Amplify Force'.'Amplify Left Signal'.'FOP 1'
                            to target ::> 'Position Pads'.'Position Front Right Pad'.'FIP 1' { 
                            @CapellaID { eid = "101a79b8-528c-4a65-ac23-952035322ae9"; } 
                            attribute :>> isMulticast = false; 
                            attribute :>> isMultireceive = false; 
                            attribute :>> kindOfRate = RateKind::Unspecified; 
                            attribute :>> interfaceName = "Amplified Force"; 
                             
                        }  
                        interface '770dedc8-1a04-4afd-8183-7c575263fa14' : FunctionalExchange 
                            connect source ::> 'Position Pads'.'Position Front Right Pad'.'FOP 1'
                            to target ::> 'Apply Friction to Rotors'.'Convert Friction Force to Stopping Torque'.'FIP 1' { 
                            @CapellaID { eid = "770dedc8-1a04-4afd-8183-7c575263fa14"; } 
                            attribute :>> isMulticast = false; 
                            attribute :>> isMultireceive = false; 
                            attribute :>> kindOfRate = RateKind::Unspecified; 
                            attribute :>> interfaceName = "Pad Force"; 
                             
                        }  
                        interface '678b5653-4dfe-4d9e-962e-db56601ddf0d' : FunctionalExchange 
                            connect source ::> 'Transmit Signal'.'Transmit Left Signal'.'FOP 1'
                            to target ::> 'Receive Signal'.'Receive Left Signal'.'FIP 1' { 
                            @CapellaID { eid = "678b5653-4dfe-4d9e-962e-db56601ddf0d"; } 
                            attribute :>> isMulticast = false; 
                            attribute :>> isMultireceive = false; 
                            attribute :>> kindOfRate = RateKind::Unspecified; 
                            attribute :>> interfaceName = "Force Signal"; 
                             
                        }  
                        interface '5a9d246f-8388-44ae-b373-e150a4e822a6' : FunctionalExchange 
                            connect source ::> 'Friction to Rotors'.'Convert Friction Force to Stopping Torque'.'FOP 1'
                            to target ::> 'Gather 17'.'FIP 1' { 
                            @CapellaID { eid = "5a9d246f-8388-44ae-b373-e150a4e822a6"; } 
                            attribute :>> isMulticast = false; 
                            attribute :>> isMultireceive = false; 
                            attribute :>> kindOfRate = RateKind::Unspecified; 
                            attribute :>> interfaceName = "Rotor Torque"; 
                             
                        }  
                        interface '0f339377-0ff7-4b5c-b464-8f999bad65e9' : FunctionalExchange 
                            connect source ::> 'Apply Friction to Rotors'.'Convert Friction Force to Stopping Torque'.'FOP 2'
                            to target ::> 'Gather 17'.'FIP 2' { 
                            @CapellaID { eid = "0f339377-0ff7-4b5c-b464-8f999bad65e9"; } 
                            attribute :>> isMulticast = false; 
                            attribute :>> isMultireceive = false; 
                            attribute :>> kindOfRate = RateKind::Unspecified; 
                            attribute :>> interfaceName = "Rotor Torque"; 
                             
                        }  
                        interface 'fbc32d30-3f11-4fee-a2fc-2f1f63842e37' : FunctionalExchange 
                            connect source ::> 'Position Pads'.'FOP 2'
                            to target ::> 'Detect Brake Engagement Level'.'FIP 1' { 
                            @CapellaID { eid = "fbc32d30-3f11-4fee-a2fc-2f1f63842e37"; } 
                            attribute :>> isMulticast = false; 
                            attribute :>> isMultireceive = false; 
                            attribute :>> kindOfRate = RateKind::Unspecified; 
                            attribute :>> interfaceName = "Pad Position"; 
                             
                        }  
                        interface 'f0a1523f-46a1-4b67-bfb4-9ca8e325da14' : FunctionalExchange 
                            connect source ::> 'Detect Brake Engagement Level'.'FOP 1'
                            to target ::> 'Monitor Pad Wear'.'FIP 1' { 
                            @CapellaID { eid = "f0a1523f-46a1-4b67-bfb4-9ca8e325da14"; } 
                            attribute :>> isMulticast = false; 
                            attribute :>> isMultireceive = false; 
                            attribute :>> kindOfRate = RateKind::Unspecified; 
                            attribute :>> interfaceName = "Brake Signals"; 
                             
                        }  
                        interface 'db8942ec-ffb7-4d07-abbf-4d2aa4fd6ebe' : FunctionalExchange 
                            connect source ::> 'Monitor Pad Wear'.'FOP 1'
                            to target ::> 'Report Status to Rider'.'FIP 1' { 
                            @CapellaID { eid = "db8942ec-ffb7-4d07-abbf-4d2aa4fd6ebe"; } 
                            attribute :>> isMulticast = false; 
                            attribute :>> isMultireceive = false; 
                            attribute :>> kindOfRate = RateKind::Unspecified; 
                            attribute :>> interfaceName = "Pad State"; 
                             
                        }  
                        interface 'dc66cee8-ff16-4d25-b988-ea1d763276bd' : FunctionalExchange 
                            connect source ::> 'Detect Brake Engagement Level'.'FOP 2'
                            to target ::> 'Transmit Data'.'FIP 1' { 
                            @CapellaID { eid = "dc66cee8-ff16-4d25-b988-ea1d763276bd"; } 
                            attribute :>> isMulticast = false; 
                            attribute :>> isMultireceive = false; 
                            attribute :>> kindOfRate = RateKind::Unspecified; 
                            attribute :>> interfaceName = "Brake Signals"; 
                             
                        }  
                        interface '82a2620e-8758-4c61-a491-890fed334722' : FunctionalExchange 
                            connect source ::> 'Provide Backup'.'FOP 1'
                            to target ::> 'Receive Signal'.'FIP 2' { 
                            @CapellaID { eid = "82a2620e-8758-4c61-a491-890fed334722"; } 
                            attribute :>> isMulticast = false; 
                            attribute :>> isMultireceive = false; 
                            attribute :>> kindOfRate = RateKind::Unspecified; 
                            attribute :>> interfaceName = "FunctionalExchange 22"; 
                        }  
                        interface '7cf337f0-fe61-441a-b518-4317fac5ae2b' : FunctionalExchange 
                            connect source ::> 'Amplify Force'.'FOP 2'
                            to target ::> 'Detect Brake Engagement Level'.'FIP 2' { 
                            @CapellaID { eid = "7cf337f0-fe61-441a-b518-4317fac5ae2b"; } 
                            attribute :>> isMulticast = false; 
                            attribute :>> isMultireceive = false; 
                            attribute :>> kindOfRate = RateKind::Unspecified; 
                            attribute :>> interfaceName = "Actuator Signals"; 
                             
                        }  
                        interface '901f9837-48c2-4e01-969f-e5a3bd89c76f' : FunctionalExchange 
                            connect source ::> 'Apply Friction to Rotors'.'FOP 3'
                            to target ::> 'Detect Brake Engagement Level'.'FIP 3' { 
                            @CapellaID { eid = "901f9837-48c2-4e01-969f-e5a3bd89c76f"; } 
                            attribute :>> isMulticast = false; 
                            attribute :>> isMultireceive = false; 
                            attribute :>> kindOfRate = RateKind::Unspecified; 
                            attribute :>> interfaceName = "Rotor Spped"; 
                             
                        }  
                        interface '107d695a-7947-436c-ab45-f32601351120' : FunctionalExchange 
                            connect source ::> 'Capture Brake Input'.'Capture Right Brake Input'.'FOP 1'
                            to target ::> 'Modulate Input Forces'.'Modulate Right Input Force'.'FIP 1' { 
                            @CapellaID { eid = "107d695a-7947-436c-ab45-f32601351120"; } 
                            attribute :>> isMulticast = false; 
                            attribute :>> isMultireceive = false; 
                            attribute :>> kindOfRate = RateKind::Unspecified; 
                            attribute :>> interfaceName = "Force"; 
                        }  
                        interface '22245a58-6a60-4231-a8b0-a5c1bd2615a0' : FunctionalExchange 
                            connect source ::> 'Modulate Input Forces'.'Modulate Right Input Force'.'FOP 1'
                            to target ::> 'Transmit Force'.'Transmit Right Force'.'FIP 1' { 
                            @CapellaID { eid = "22245a58-6a60-4231-a8b0-a5c1bd2615a0"; } 
                            attribute :>> isMulticast = false; 
                            attribute :>> isMultireceive = false; 
                            attribute :>> kindOfRate = RateKind::Unspecified; 
                            attribute :>> interfaceName = "Modulated Force"; 
                        }  
                        interface 'bbac7fbe-74a3-45af-be84-0619a04671f1' : FunctionalExchange 
                            connect source ::> 'Modulate Input Forces'.'Modulate Right Input Force'.'FOP 2'
                            to target ::> 'Translate Mechanical Action to Signal'.'Tranlate Mechanical Right  Action to Signal '.'FIP 1' { 
                            @CapellaID { eid = "bbac7fbe-74a3-45af-be84-0619a04671f1"; } 
                            attribute :>> isMulticast = false; 
                            attribute :>> isMultireceive = false; 
                            attribute :>> kindOfRate = RateKind::Unspecified; 
                            attribute :>> interfaceName = "Mdulated Force"; 
                        }  
                        interface '3efa0745-98a6-45df-afc5-407fc318896e' : FunctionalExchange 
                            connect source ::> 'Transmit Force'.'Transmit Right Force'.'FOP 1'
                            to target ::> 'Transmit Force '.'Tranmit Right Force'.'FIP 1' { 
                            @CapellaID { eid = "3efa0745-98a6-45df-afc5-407fc318896e"; } 
                            attribute :>> isMulticast = false; 
                            attribute :>> isMultireceive = false; 
                            attribute :>> kindOfRate = RateKind::Unspecified; 
                            attribute :>> interfaceName = "Modulated Fluid"; 
                        }  
                        interface '831291ae-5f9e-4271-9d02-4d652c19176e' : FunctionalExchange 
                            connect source ::> 'Transmit Force '.'Tranmit Right Force'.'FOP 1'
                            to target ::> 'Receive Force'.'Receive Rear Force'.'FIP 1' { 
                            @CapellaID { eid = "831291ae-5f9e-4271-9d02-4d652c19176e"; } 
                            attribute :>> isMulticast = false; 
                            attribute :>> isMultireceive = false; 
                            attribute :>> kindOfRate = RateKind::Unspecified; 
                            attribute :>> interfaceName = "Modulated Force"; 
                        }  
                        interface '457087c1-dfd6-47b1-93ab-d3b07aaffd96' : FunctionalExchange 
                            connect source ::> 'Receive Force'.'Receive Rear Force'.'FOP 1'
                            to target ::> 'Amplify Force'.'Amplify Rear Force'.'FIP 1' { 
                            @CapellaID { eid = "457087c1-dfd6-47b1-93ab-d3b07aaffd96"; } 
                            attribute :>> isMulticast = false; 
                            attribute :>> isMultireceive = false; 
                            attribute :>> kindOfRate = RateKind::Unspecified; 
                            attribute :>> interfaceName = "Modulated Force"; 
                        }  
                        interface '763a580a-732f-4649-8b96-377bdd7a9832' : FunctionalExchange 
                            connect source ::> 'Amplify Force'.'Amplify Front Force'.'FOP 1'
                            to target ::> 'Position Pads'.'Position Front Left pad'.'FIP 1' { 
                            @CapellaID { eid = "763a580a-732f-4649-8b96-377bdd7a9832"; } 
                            attribute :>> isMulticast = false; 
                            attribute :>> isMultireceive = false; 
                            attribute :>> kindOfRate = RateKind::Unspecified; 
                            attribute :>> interfaceName = "Amplified Force"; 
                        }  
                        interface 'eb93c1e9-f8f6-49d2-8865-be38b83fc78d' : FunctionalExchange 
                            connect source ::> 'Amplify Force'.'Amplify Rear Force'.'FOP 1'
                            to target ::> 'Position Pads'.'Position Rear Right Pad '.'FIP 1' { 
                            @CapellaID { eid = "eb93c1e9-f8f6-49d2-8865-be38b83fc78d"; } 
                            attribute :>> isMulticast = false; 
                            attribute :>> isMultireceive = false; 
                            attribute :>> kindOfRate = RateKind::Unspecified; 
                            attribute :>> interfaceName = "Amplified Force"; 
                        }  
                        interface '6fa1b1fd-8afc-4529-a200-b49b1c88f45f' : FunctionalExchange 
                            connect source ::> 'Amplify Force'.'Amplify Rear Force'.'FOP 1'
                            to target ::> 'Position Pads'.'Position Rear Left Pad'.'FIP 1' { 
                            @CapellaID { eid = "6fa1b1fd-8afc-4529-a200-b49b1c88f45f"; } 
                            attribute :>> isMulticast = false; 
                            attribute :>> isMultireceive = false; 
                            attribute :>> kindOfRate = RateKind::Unspecified; 
                            attribute :>> interfaceName = "Amplified Force"; 
                        }  
                        interface '395b900a-d34f-4be7-80c8-2c6afe562246' : FunctionalExchange 
                            connect source ::> 'Position Pads'.'Position Front Left pad'.'FOP 1'
                            to target ::> 'Friction to Rotors'.'Convert Friction Force to Stopping Torque'.'FIP 2' { 
                            @CapellaID { eid = "395b900a-d34f-4be7-80c8-2c6afe562246"; } 
                            attribute :>> isMulticast = false; 
                            attribute :>> isMultireceive = false; 
                            attribute :>> kindOfRate = RateKind::Unspecified; 
                            attribute :>> interfaceName = "Pad Force"; 
                        }  
                        interface '56903f47-249d-4c35-aef5-179a101b5b94' : FunctionalExchange 
                            connect source ::> 'Friction to Rotors'.'Convert Friction Force to Stopping Torque'.'FOP 1'
                            to target ::> 'Gather 17'.'FIP 3' { 
                            @CapellaID { eid = "56903f47-249d-4c35-aef5-179a101b5b94"; } 
                            attribute :>> isMulticast = false; 
                            attribute :>> isMultireceive = false; 
                            attribute :>> kindOfRate = RateKind::Unspecified; 
                            attribute :>> interfaceName = "Rotoe Torque"; 
                        }  
                        interface '0aeaacf1-afe0-4d37-b005-cee78cf95e96' : FunctionalExchange 
                            connect source ::> 'Position Pads'.'Position Rear Right Pad '.'FOP 1'
                            to target ::> 'Friction to Rotors'.'Convert Friction Force to Stopping Torque'.'FIP 1' { 
                            @CapellaID { eid = "0aeaacf1-afe0-4d37-b005-cee78cf95e96"; } 
                            attribute :>> isMulticast = false; 
                            attribute :>> isMultireceive = false; 
                            attribute :>> kindOfRate = RateKind::Unspecified; 
                            attribute :>> interfaceName = "Pad Force"; 
                        }  
                        interface 'bfc10a00-2b64-45c7-a123-a1ba15555a46' : FunctionalExchange 
                            connect source ::> 'Position Pads'.'Position Rear Left Pad'.'FOP 1'
                            to target ::> 'Friction to Rotors'.'Convert Friction Force to Stopping Torque'.'FIP 1' { 
                            @CapellaID { eid = "bfc10a00-2b64-45c7-a123-a1ba15555a46"; } 
                            attribute :>> isMulticast = false; 
                            attribute :>> isMultireceive = false; 
                            attribute :>> kindOfRate = RateKind::Unspecified; 
                            attribute :>> interfaceName = "Pad Force"; 
                        }  
                        interface '0376d1b9-6c02-40d6-a81a-c4126f01c285' : FunctionalExchange 
                            connect source ::> 'Translate Mechanical Action to Signal'.'Tranlate Mechanical Right  Action to Signal '.'FOP 1'
                            to target ::> 'Tranmit Signal'.'Tranmit Right Signal'.'FIP 1' { 
                            @CapellaID { eid = "0376d1b9-6c02-40d6-a81a-c4126f01c285"; } 
                            attribute :>> isMulticast = false; 
                            attribute :>> isMultireceive = false; 
                            attribute :>> kindOfRate = RateKind::Unspecified; 
                            attribute :>> interfaceName = "Force Signal"; 
                        }  
                        interface '27b6dd11-edf2-4f6e-9f32-ca8f298dceb0' : FunctionalExchange 
                            connect source ::> 'Tranmit Signal'.'Tranmit Right Signal'.'FOP 1'
                            to target ::> 'Transmit Signal'.'Tranmit Right Signal'.'FIP 1' { 
                            @CapellaID { eid = "27b6dd11-edf2-4f6e-9f32-ca8f298dceb0"; } 
                            attribute :>> isMulticast = false; 
                            attribute :>> isMultireceive = false; 
                            attribute :>> kindOfRate = RateKind::Unspecified; 
                            attribute :>> interfaceName = "Force Signal"; 
                        }  
                        interface '24a58552-fdc0-4191-96ca-a8abadab2a6e' : FunctionalExchange 
                            connect source ::> 'Transmit Signal'.'Tranmit Right Signal'.'FOP 1'
                            to target ::> 'Receive Signal'.'Receive Right Signal'.'FIP 1' { 
                            @CapellaID { eid = "24a58552-fdc0-4191-96ca-a8abadab2a6e"; } 
                            attribute :>> isMulticast = false; 
                            attribute :>> isMultireceive = false; 
                            attribute :>> kindOfRate = RateKind::Unspecified; 
                            attribute :>> interfaceName = "Force Signal"; 
                        }  
                        interface 'ab708579-151c-4f03-b072-dc50fcca00a4' : FunctionalExchange 
                            connect source ::> 'Receive Signal'.'Receive Right Signal'.'FOP 1'
                            to target ::> 'Amplify Force'.'Recieve Right Signal'.'FIP 1' { 
                            @CapellaID { eid = "ab708579-151c-4f03-b072-dc50fcca00a4"; } 
                            attribute :>> isMulticast = false; 
                            attribute :>> isMultireceive = false; 
                            attribute :>> kindOfRate = RateKind::Unspecified; 
                            attribute :>> interfaceName = "Force Signal"; 
                        }  
                        interface '8715aff4-9ac2-4bd1-9ff7-d3efbea9e1d0' : FunctionalExchange 
                            connect source ::> 'Amplify Force'.'Amplify Left Signal'.'FOP 1'
                            to target ::> 'Position Pads'.'Posion Front Left Pad'.'FIP 1' { 
                            @CapellaID { eid = "8715aff4-9ac2-4bd1-9ff7-d3efbea9e1d0"; } 
                            attribute :>> isMulticast = false; 
                            attribute :>> isMultireceive = false; 
                            attribute :>> kindOfRate = RateKind::Unspecified; 
                            attribute :>> interfaceName = "Amplified Force"; 
                        }  
                        interface 'aa226f51-fd97-4b33-8f65-3d265ef63db1' : FunctionalExchange 
                            connect source ::> 'Amplify Force'.'Recieve Right Signal'.'FOP 1'
                            to target ::> 'Position Pads'.'Position Rear Left Pad'.'FIP 1' { 
                            @CapellaID { eid = "aa226f51-fd97-4b33-8f65-3d265ef63db1"; } 
                            attribute :>> isMulticast = false; 
                            attribute :>> isMultireceive = false; 
                            attribute :>> kindOfRate = RateKind::Unspecified; 
                            attribute :>> interfaceName = "Amplified Force"; 
                        }  
                        interface 'c4b5cb70-dddd-44cf-a2a0-ec4997707778' : FunctionalExchange 
                            connect source ::> 'Amplify Force'.'Recieve Right Signal'.'FOP 2'
                            to target ::> 'Position Pads'.'Position Rear Left Pad'.'FIP 1' { 
                            @CapellaID { eid = "c4b5cb70-dddd-44cf-a2a0-ec4997707778"; } 
                            attribute :>> isMulticast = false; 
                            attribute :>> isMultireceive = false; 
                            attribute :>> kindOfRate = RateKind::Unspecified; 
                            attribute :>> interfaceName = "Amplidied Force"; 
                        }  
                        interface 'fdfe3937-2bd1-477d-8ed8-ca06b1f6436b' : FunctionalExchange 
                            connect source ::> 'Position Pads'.'Posion Front Left Pad'.'FOP 1'
                            to target ::> 'Apply Friction to Rotors'.'Convert Friction Force to Stopping Torque'.'FIP 2' { 
                            @CapellaID { eid = "fdfe3937-2bd1-477d-8ed8-ca06b1f6436b"; } 
                            attribute :>> isMulticast = false; 
                            attribute :>> isMultireceive = false; 
                            attribute :>> kindOfRate = RateKind::Unspecified; 
                            attribute :>> interfaceName = "Pad Force"; 
                        }  
                        interface 'a8d4cdc9-84a8-4dcb-88c4-89a45e29ea67' : FunctionalExchange 
                            connect source ::> 'Position Pads'.'Position Rear Left Pad'.'FOP 1'
                            to target ::> 'Apply Friction to Rotors'.'Convert Friction Force to Stopping Torque'.'FIP 1' { 
                            @CapellaID { eid = "a8d4cdc9-84a8-4dcb-88c4-89a45e29ea67"; } 
                            attribute :>> isMulticast = false; 
                            attribute :>> isMultireceive = false; 
                            attribute :>> kindOfRate = RateKind::Unspecified; 
                            attribute :>> interfaceName = "Pad Force"; 
                        }  
                        interface '1e2da5f1-0356-4d86-89e8-fffda431b2a2' : FunctionalExchange 
                            connect source ::> 'Position Pads'.'Position Rear Left Pad'.'FOP 1'
                            to target ::> 'Apply Friction to Rotors'.'Convert Friction Force to Stopping Torque'.'FIP 2' { 
                            @CapellaID { eid = "1e2da5f1-0356-4d86-89e8-fffda431b2a2"; } 
                            attribute :>> isMulticast = false; 
                            attribute :>> isMultireceive = false; 
                            attribute :>> kindOfRate = RateKind::Unspecified; 
                            attribute :>> interfaceName = "Pad Force"; 
                        }  
                        interface '147380bb-5f53-4152-80c2-8178d295af72' : FunctionalExchange 
                            connect source ::> 'Apply Friction to Rotors'.'Convert Friction Force to Stopping Torque'.'FOP 1'
                            to target ::> 'Gather 17'.'FIP 4' { 
                            @CapellaID { eid = "147380bb-5f53-4152-80c2-8178d295af72"; } 
                            attribute :>> isMulticast = false; 
                            attribute :>> isMultireceive = false; 
                            attribute :>> kindOfRate = RateKind::Unspecified; 
                            attribute :>> interfaceName = "Rotor Torque"; 
                        }  
                        dependency '6294fefd-ed09-4638-a096-d8dc96fb2b80'
                            from 'Brake Feedback'::'57f93d9c-6fc1-4c93-b306-86eb0830aebd'
                            to  'Logical Architecture'::'Logical Functions'::'Root Logical Function'::'Provide Stopping'::'Brake Feedback'::'9b980fd5-e0f1-4e0a-83e2-a648a7335705' { 
                            @TransfoLink { 
                                @CapellaID { eid = "6294fefd-ed09-4638-a096-d8dc96fb2b80"; } 
                            }  
                        }  
                        dependency '3ff769d2-5ce6-4332-b6d3-5d2fd1b51160'
                            from 'Stoping Signal Hydraulic'::'2bc6d443-377e-459f-81c3-1b94771acafd'
                            to  'Logical Architecture'::'Logical Functions'::'Root Logical Function'::'Provide Stopping'::'Stopping Electonic '::'b70c47a7-b2ba-4dda-898b-5dcc0abc6372' { 
                            @TransfoLink { 
                                @CapellaID { eid = "3ff769d2-5ce6-4332-b6d3-5d2fd1b51160"; } 
                            }  
                        }  
                        dependency '8cf9b514-f94f-4f30-82df-097ae7063bc6'
                            from 'Brake Diagnostics'::'d6cf5baa-b707-46e6-b12f-817b38fb8f28'
                            to  'Logical Architecture'::'Logical Functions'::'Root Logical Function'::'Provide Stopping'::'Brake Diagnostics'::'8031acee-ecb9-4dbc-bb62-b36474638173' { 
                            @TransfoLink { 
                                @CapellaID { eid = "8cf9b514-f94f-4f30-82df-097ae7063bc6"; } 
                            }  
                        }  
                        dependency '06c8046c-2807-439a-879c-86144375b982'
                            from 'Brake Feedback'::'95ad3c94-666a-4b9a-9d4d-4b5f6fbdc267'
                            to  'Logical Architecture'::'Logical Functions'::'Root Logical Function'::'Provide Stopping'::'Brake Feedback'::'29c2c6cf-235c-406a-b8e1-642d8d48054b' { 
                            @TransfoLink { 
                                @CapellaID { eid = "06c8046c-2807-439a-879c-86144375b982"; } 
                            }  
                        }  
                        dependency '46842ec1-d536-44c2-a9ab-851cd5461f8f'
                            from 'Brake Diagnostics'::'dd365bdf-ff3c-43bf-9e88-44c3d3658f96'
                            to  'Logical Architecture'::'Logical Functions'::'Root Logical Function'::'Provide Stopping'::'Brake Diagnostics'::'1651c2ba-70c4-433a-ae1e-f8e011f9267e' { 
                            @TransfoLink { 
                                @CapellaID { eid = "46842ec1-d536-44c2-a9ab-851cd5461f8f"; } 
                            }  
                        }  
                        dependency 'ecbfc9a7-fe08-4693-8c1b-a1c537c40055'
                            from 'Stoping Signal Hydraulic'::'4a16dc99-71a8-42b2-9ada-da84cdd060a0'
                            to  'Logical Architecture'::'Logical Functions'::'Root Logical Function'::'Provide Stopping'::'Stopping Electonic '::'ce876a29-36c7-473d-ba81-58eb321b541c' { 
                            @TransfoLink { 
                                @CapellaID { eid = "ecbfc9a7-fe08-4693-8c1b-a1c537c40055"; } 
                            }  
                        }  
                        dependency 'c08be45c-ddaf-4b63-b00f-c31ab9ecdc80'
                            from 'Stoping Signal Hydraulic'::'d1aac0ba-90a5-4403-ba4e-d49d65b9632f'
                            to  'Logical Architecture'::'Logical Functions'::'Root Logical Function'::'Provide Stopping'::'Stopping Electonic '::'d0efcbe5-f21b-4ccc-b3a9-89c7a615e04a' { 
                            @TransfoLink { 
                                @CapellaID { eid = "c08be45c-ddaf-4b63-b00f-c31ab9ecdc80"; } 
                            }  
                        }  
                        dependency '5b90a1bd-82c7-4200-bd21-1a5dd3cd25f5'
                            from 'Brake Diagnostics'::'de58cc82-a663-4093-978e-cce6c09122df'
                            to  'Logical Architecture'::'Logical Functions'::'Root Logical Function'::'Provide Stopping'::'Brake Diagnostics'::'d8016a60-26df-40b5-be7b-874c3da29db5' { 
                            @TransfoLink { 
                                @CapellaID { eid = "5b90a1bd-82c7-4200-bd21-1a5dd3cd25f5"; } 
                            }  
                        }  
                        dependency 'bf05a360-6d40-4e73-b7aa-db07b0e4b854'
                            from 'Brake Feedback'::'3800019b-3532-4204-8fa8-c110211a65bf'
                            to  'Logical Architecture'::'Logical Functions'::'Root Logical Function'::'Provide Stopping'::'Brake Feedback'::'a35b97ed-1fda-4bae-a0e4-ec7c58c622ff' { 
                            @TransfoLink { 
                                @CapellaID { eid = "bf05a360-6d40-4e73-b7aa-db07b0e4b854"; } 
                            }  
                        }  
                        dependency '707f8aa4-559c-4065-b169-a90b41b9bf92'
                            from 'Brake Diagnostics'::'086a2b63-ce3f-412d-b8ef-2e5eaac8cdc0'
                            to  'Logical Architecture'::'Logical Functions'::'Root Logical Function'::'Provide Stopping'::'Brake Diagnostics'::'f2181d1f-8142-4e09-b213-4114761373f6' { 
                            @TransfoLink { 
                                @CapellaID { eid = "707f8aa4-559c-4065-b169-a90b41b9bf92"; } 
                            }  
                        }  
                        dependency '5c2189c2-5198-4330-8058-fcdf957eefde'
                            from 'Stoping Signal Hydraulic'::'c74f83fe-d477-4c4f-9b6a-dcd421ca9f3d'
                            to  'Logical Architecture'::'Logical Functions'::'Root Logical Function'::'Provide Stopping'::'Stopping Electonic '::'c680e0c4-7010-4430-96cc-df12ab07709d' { 
                            @TransfoLink { 
                                @CapellaID { eid = "5c2189c2-5198-4330-8058-fcdf957eefde"; } 
                            }  
                        }  
                        dependency 'c460bccc-11f5-459a-979a-41afaf056bab'
                            from 'Brake Feedback'::'9f26dccb-7bff-489d-8f5f-ef0cf504698d'
                            to  'Logical Architecture'::'Logical Functions'::'Root Logical Function'::'Provide Stopping'::'Brake Feedback'::'7bd72d74-5715-4524-ad49-9c4b9bf92ab6' { 
                            @TransfoLink { 
                                @CapellaID { eid = "c460bccc-11f5-459a-979a-41afaf056bab"; } 
                            }  
                        }  
                        dependency '5bec5a86-049f-4681-b859-39fa99211a16'
                            from 'Brake Feedback'::'de803a62-431c-4896-9f7f-64bf57de64e3'
                            to  'Logical Architecture'::'Logical Functions'::'Root Logical Function'::'Provide Stopping'::'Brake Feedback'::'89104da8-6418-4889-87a2-e34492e80948' { 
                            @TransfoLink { 
                                @CapellaID { eid = "5bec5a86-049f-4681-b859-39fa99211a16"; } 
                            }  
                        }  
                        dependency '279085e6-0454-4d7a-b891-d23475038804'
                            from 'Stoping Signal Hydraulic'::'eec6934e-70ad-4d98-a013-6810c49fb0d5'
                            to  'Logical Architecture'::'Logical Functions'::'Root Logical Function'::'Provide Stopping'::'Stopping Electonic '::'5bf635a3-4cb7-43d8-9100-5f8a0b5cbc1a' { 
                            @TransfoLink { 
                                @CapellaID { eid = "279085e6-0454-4d7a-b891-d23475038804"; } 
                            }  
                        }  
                        dependency '3ce9028c-3109-4fa6-938f-281239e0e939'
                            from 'Brake Diagnostics'::'fc8538bc-00cd-43ef-b7b8-e6d94fb65fae'
                            to  'Logical Architecture'::'Logical Functions'::'Root Logical Function'::'Provide Stopping'::'Brake Diagnostics'::'1f5b1d73-82e9-47d1-a071-258efd6eb869' { 
                            @TransfoLink { 
                                @CapellaID { eid = "3ce9028c-3109-4fa6-938f-281239e0e939"; } 
                            }  
                        }  
                        dependency '2b5cb395-90cf-43f3-9f22-e9027109e3c2'
                            from 'Stoping Signal Hydraulic'::'a6a866a0-1965-4693-8862-45a951f7e794'
                            to  'Logical Architecture'::'Logical Functions'::'Root Logical Function'::'Provide Stopping'::'Stopping Electonic '::'3c2c7ab3-2d60-40d2-a66f-a6a222b2840c' { 
                            @TransfoLink { 
                                @CapellaID { eid = "2b5cb395-90cf-43f3-9f22-e9027109e3c2"; } 
                            }  
                        }  
                        dependency '9086bcf9-d398-44e9-98ac-1e64a5821149'
                            from 'Brake Feedback'::'fe44a134-f627-4655-a64b-83d383757448'
                            to  'Logical Architecture'::'Logical Functions'::'Root Logical Function'::'Provide Stopping'::'Brake Feedback'::'6798c9db-a31c-4e0f-9979-d88e697eb304' { 
                            @TransfoLink { 
                                @CapellaID { eid = "9086bcf9-d398-44e9-98ac-1e64a5821149"; } 
                            }  
                        }  
                        dependency '96a985e8-5521-4d5d-927d-93cf181b1eaf'
                            from 'Stoping Signal Hydraulic'::'78d7d06b-5fdc-49c1-8fa5-4ca8c6ad92ff'
                            to  'Logical Architecture'::'Logical Functions'::'Root Logical Function'::'Provide Stopping'::'Stopping Electonic '::'bee6d2e3-e897-4ee9-9e13-5b06492f95cc' { 
                            @TransfoLink { 
                                @CapellaID { eid = "96a985e8-5521-4d5d-927d-93cf181b1eaf"; } 
                            }  
                        }  
                        dependency '4e220a02-eeac-4e4d-946a-f95efebfd14a'
                            from 'Brake Feedback'::'10d2e835-95c7-4dd0-8712-b9f8d2502a4b'
                            to  'Logical Architecture'::'Logical Functions'::'Root Logical Function'::'Provide Stopping'::'Brake Feedback'::'c99b3ed7-1fe8-4a74-a6c5-816a415e3203' { 
                            @TransfoLink { 
                                @CapellaID { eid = "4e220a02-eeac-4e4d-946a-f95efebfd14a"; } 
                            }  
                        }  
                        dependency '3d6551e7-1904-4859-8aaf-5720ce2a373c'
                            from 'Stoping Signal Hydraulic'::'b67770ec-0685-4e28-8170-8f5839b813d4'
                            to  'Logical Architecture'::'Logical Functions'::'Root Logical Function'::'Provide Stopping'::'Stopping Electonic '::'8c8db9c8-ce03-4ec2-a685-3f6a5a4d186b' { 
                            @TransfoLink { 
                                @CapellaID { eid = "3d6551e7-1904-4859-8aaf-5720ce2a373c"; } 
                            }  
                        }  
                        dependency 'bd4ac9b2-72c7-48e2-a78e-fc2428a09eaa'
                            from 'Stoping Signal Hydraulic'::'c2869007-8e73-4e43-bacd-ed138bc96c46'
                            to  'Logical Architecture'::'Logical Functions'::'Root Logical Function'::'Provide Stopping'::'Stopping Electonic '::'d3f31378-c68e-4dd1-af05-c7bc3b919dbd' { 
                            @TransfoLink { 
                                @CapellaID { eid = "bd4ac9b2-72c7-48e2-a78e-fc2428a09eaa"; } 
                            }  
                        }  
                        dependency 'bebeebc5-8080-47ea-8eaa-0a957c91730b'
                            from 'Stoping Signal Hydraulic'::'71d5a5c5-136f-4caa-bc38-21528f67eebd'
                            to  'Logical Architecture'::'Logical Functions'::'Root Logical Function'::'Provide Stopping'::'Stopping Electonic '::'c9e34454-2372-4d86-a594-08b1af1120e2' { 
                            @TransfoLink { 
                                @CapellaID { eid = "bebeebc5-8080-47ea-8eaa-0a957c91730b"; } 
                            }  
                        }  
                        dependency '8bd4fab6-8ee4-45ea-881e-a288d4285ad9'
                            from 'Stoping Signal Hydraulic'::'7d849395-85ee-4a0b-b75c-9147f9f7908b'
                            to  'Logical Architecture'::'Logical Functions'::'Root Logical Function'::'Provide Stopping'::'Stopping Electonic '::'97976050-fd6e-4cf7-9f7d-504f3108335d' { 
                            @TransfoLink { 
                                @CapellaID { eid = "8bd4fab6-8ee4-45ea-881e-a288d4285ad9"; } 
                            }  
                        }  
                        dependency '43a34eb3-f815-456c-9c40-d744c74ebfa1'
                            from 'Stoping Signal Hydraulic'::'9b9e9a48-9883-4764-b8f5-8a63e5c6e0a4'
                            to  'Logical Architecture'::'Logical Functions'::'Root Logical Function'::'Provide Stopping'::'Stopping Electonic '::'70fc0d46-5df5-4fde-b1e3-bbc786757d64' { 
                            @TransfoLink { 
                                @CapellaID { eid = "43a34eb3-f815-456c-9c40-d744c74ebfa1"; } 
                            }  
                        }  
                        dependency 'fbe2ffea-348a-4ef6-8c03-a08f3af1ad3b'
                            from 'Stoping Signal Hydraulic'::'1429dd37-9c35-473e-af8a-b267e567001e'
                            to  'Logical Architecture'::'Logical Functions'::'Root Logical Function'::'Provide Stopping'::'Stopping Electonic '::'f0b2d4b6-fe59-4fe9-958e-64ad54889bcc' { 
                            @TransfoLink { 
                                @CapellaID { eid = "fbe2ffea-348a-4ef6-8c03-a08f3af1ad3b"; } 
                            }  
                        }  
                        dependency '4f46669e-2b8e-4c26-a8e9-fb23b7fcbb07'
                            from 'Stoping Signal Hydraulic'::'2ebd9fa9-c9da-444d-9fe9-0a5567720e57'
                            to  'Logical Architecture'::'Logical Functions'::'Root Logical Function'::'Provide Stopping'::'Stopping Electonic '::'9f455326-ff11-49dd-8477-fe7cf03bc191' { 
                            @TransfoLink { 
                                @CapellaID { eid = "4f46669e-2b8e-4c26-a8e9-fb23b7fcbb07"; } 
                            }  
                        }  
                        dependency '9a0c7a4e-8780-44fc-8399-4241b2cbc82b'
                            from 'Stoping Signal Hydraulic'::'efe4bbf1-b079-4f0e-981a-593a6034149b'
                            to  'Logical Architecture'::'Logical Functions'::'Root Logical Function'::'Provide Stopping'::'Stopping Electonic '::'aabab2b8-25da-4ebd-bbb0-1ba0a21406b1' { 
                            @TransfoLink { 
                                @CapellaID { eid = "9a0c7a4e-8780-44fc-8399-4241b2cbc82b"; } 
                            }  
                        }  
                        dependency 'ba8bc2ab-8fca-4a32-ad6e-0745d89aa190'
                            from 'Stoping Signal Hydraulic'::'32d78a10-cffe-4da4-ac2f-bc90f93b39d3'
                            to  'Logical Architecture'::'Logical Functions'::'Root Logical Function'::'Provide Stopping'::'Stopping Electonic '::'a4f6027f-dda0-4773-b64b-a2606fa89fbd' { 
                            @TransfoLink { 
                                @CapellaID { eid = "ba8bc2ab-8fca-4a32-ad6e-0745d89aa190"; } 
                            }  
                        }  
                        dependency 'ac87f8cf-ea1e-48b0-8ce1-a125039f67b7'
                            from 'Stoping Signal Hydraulic'::'2e190f15-bb07-4f78-8679-147ff0571f2e'
                            to  'Logical Architecture'::'Logical Functions'::'Root Logical Function'::'Provide Stopping'::'Stopping Electonic '::'3cb0746e-a3b4-4c35-89b3-87bbad0d2664' { 
                            @TransfoLink { 
                                @CapellaID { eid = "ac87f8cf-ea1e-48b0-8ce1-a125039f67b7"; } 
                            }  
                        }  
                        dependency 'fbad453b-92f2-47e5-95ad-788d2e72d553'
                            from 'Stoping Signal Hydraulic'::'813fb4b8-0329-4ff4-96c8-695ee7ae3f8f'
                            to  'Logical Architecture'::'Logical Functions'::'Root Logical Function'::'Provide Stopping'::'Stopping Electonic '::'03c983f0-8b91-4945-ba08-5fb63b64fa2a' { 
                            @TransfoLink { 
                                @CapellaID { eid = "fbad453b-92f2-47e5-95ad-788d2e72d553"; } 
                            }  
                        }  
                        dependency '7078ee5a-9f1f-48b0-827b-96414e91cf2e'
                            from 'Stoping Signal Hydraulic'::'bba5daf9-ac8e-4bcc-9350-e3180080749d'
                            to  'Logical Architecture'::'Logical Functions'::'Root Logical Function'::'Provide Stopping'::'Stopping Electonic '::'3e9edee8-ce09-47bd-a4e3-3c729c5fbc56' { 
                            @TransfoLink { 
                                @CapellaID { eid = "7078ee5a-9f1f-48b0-827b-96414e91cf2e"; } 
                            }  
                        }  
                        dependency 'dd51dc1d-9500-47c3-b3f9-5dc385898e34'
                            from 'Stoping Signal Hydraulic'::'99bde598-4f8b-4aad-8501-8818c4210f58'
                            to  'Logical Architecture'::'Logical Functions'::'Root Logical Function'::'Provide Stopping'::'Stopping Electonic '::'9971f8af-2ee7-4515-8744-75967e869e03' { 
                            @TransfoLink { 
                                @CapellaID { eid = "dd51dc1d-9500-47c3-b3f9-5dc385898e34"; } 
                            }  
                        }  
                        dependency 'b550652f-df20-4e11-9da6-3983c934c4e9'
                            from 'Stoping Signal Hydraulic'::'fd5edb72-d4da-4c57-90a4-b1e18be14ed2'
                            to  'Logical Architecture'::'Logical Functions'::'Root Logical Function'::'Provide Stopping'::'Stopping Electonic '::'68a15418-23c8-48f5-aa80-d81b6fdf373a' { 
                            @TransfoLink { 
                                @CapellaID { eid = "b550652f-df20-4e11-9da6-3983c934c4e9"; } 
                            }  
                        }  
                        dependency '9b0505a8-10c1-43eb-828f-325680988015'
                            from 'Stoping Signal Hydraulic'::'f25a4aaa-f6b5-4964-adc8-4bfc0e5ca1db'
                            to  'Logical Architecture'::'Logical Functions'::'Root Logical Function'::'Provide Stopping'::'Stopping Electonic '::'8ea2a45d-2c05-4151-9f4c-ae2b28fb934e' { 
                            @TransfoLink { 
                                @CapellaID { eid = "9b0505a8-10c1-43eb-828f-325680988015"; } 
                            }  
                        }  
                        dependency '97d88bd9-36af-4435-a72b-904dfb021f0b'
                            from 'Stoping Signal Hydraulic'::'b707a76b-6bcc-48e0-bedc-83d14636de9a'
                            to  'Logical Architecture'::'Logical Functions'::'Root Logical Function'::'Provide Stopping'::'Stopping Electonic '::'c4146735-5aa4-418d-af36-6c53ba10612d' { 
                            @TransfoLink { 
                                @CapellaID { eid = "97d88bd9-36af-4435-a72b-904dfb021f0b"; } 
                            }  
                        }  
                        action 'Stoping Signal Hydraulic' : FunctionalChain  { 
                            @CapellaID { eid = "df1b93b6-8369-48e9-9853-f68f225edccb"; } 
                            attribute :>> kind = FunctionalChainKind::SIMPLE; 
                            connection '2bc6d443-377e-459f-81c3-1b94771acafd' : FunctionalChainInvolvementLink 
                                connect source ::> 'decfe5a5-6063-43c4-b52b-72e9b4b411b3'
                                to  target ::> 'c7831061-bc57-4dfa-8c02-4a1a20a581de' {

                                    ref :>> involved = '750015e9-3fa7-4975-b4db-0a4d3c7853ae';

                                } 
                            ref action '4a16dc99-71a8-42b2-9ada-da84cdd060a0' = 'Capture Brake Input'; 
                            ref action 'd1aac0ba-90a5-4403-ba4e-d49d65b9632f' = 'Support'; 
                            connection 'c74f83fe-d477-4c4f-9b6a-dcd421ca9f3d' : FunctionalChainInvolvementLink 
                                connect source ::> 'c7831061-bc57-4dfa-8c02-4a1a20a581de'
                                to  target ::> '9e8b82c4-7f3a-44d7-8eb0-cc54e8f692a1' {

                                    ref :>> involved = '7e92428b-766c-4404-b3c6-0658f5673911';

                                } 
                            ref action 'eec6934e-70ad-4d98-a013-6810c49fb0d5' = 'Modulate Input Forces'; 
                            connection 'a6a866a0-1965-4693-8862-45a951f7e794' : FunctionalChainInvolvementLink 
                                connect source ::> '9e8b82c4-7f3a-44d7-8eb0-cc54e8f692a1'
                                to  target ::> 'ef71e55d-c371-4a6e-94a1-331fcbc25665' {

                                    ref :>> involved = 'bf2cb91a-08b2-4348-a4e5-00b88a02f063';

                                } 
                            ref action '78d7d06b-5fdc-49c1-8fa5-4ca8c6ad92ff' = 'Translate Mechanical Action to Signal'; 
                            connection 'b67770ec-0685-4e28-8170-8f5839b813d4' : FunctionalChainInvolvementLink 
                                connect source ::> 'ef71e55d-c371-4a6e-94a1-331fcbc25665'
                                to  target ::> '8e801c43-abda-4d6c-9586-2196908f3ad4' {

                                    ref :>> involved = '30d2a0d9-8bf3-44b1-9511-224321fb4b88';

                                } 
                            ref action 'c2869007-8e73-4e43-bacd-ed138bc96c46' = 'Tranmit Signal'; 
                            connection '24cd3566-03fd-43f7-8f0f-c20977ed0672' : FunctionalChainInvolvementLink 
                                connect source ::> 'c2869007-8e73-4e43-bacd-ed138bc96c46'
                                to  target ::> '8c9599b7-8aef-4eeb-8a0d-9e3ea2d38c66' {

                                    ref :>> involved = 'f0f1f71e-bb6c-450c-acf2-40d8e1c108e1';

                                } 
                            ref action '8c9599b7-8aef-4eeb-8a0d-9e3ea2d38c66' = 'Provide Backup'; 
                            connection '71d5a5c5-136f-4caa-bc38-21528f67eebd' : FunctionalChainInvolvementLink 
                                connect source ::> '8e801c43-abda-4d6c-9586-2196908f3ad4'
                                to  target ::> '8355815f-794c-4f41-9110-d6e6acabf2a7' {

                                    ref :>> involved = 'f208f5b7-0c8a-495e-9caa-080b65f02a67';

                                } 
                            ref action '7d849395-85ee-4a0b-b75c-9147f9f7908b' = 'Transmit Signal'; 
                            connection '98936f01-6220-4cf0-9dee-7909b68e251e' : FunctionalChainInvolvementLink 
                                connect source ::> '8c9599b7-8aef-4eeb-8a0d-9e3ea2d38c66'
                                to  target ::> '9b9e9a48-9883-4764-b8f5-8a63e5c6e0a4' {

                                    ref :>> involved = '82a2620e-8758-4c61-a491-890fed334722';

                                } 
                            ref action '9b9e9a48-9883-4764-b8f5-8a63e5c6e0a4' = 'Receive Signal'; 
                            connection '1429dd37-9c35-473e-af8a-b267e567001e' : FunctionalChainInvolvementLink 
                                connect source ::> '8355815f-794c-4f41-9110-d6e6acabf2a7'
                                to  target ::> '3a37ac67-7750-4f4d-b6b3-5cd9fc8d1fe0' {

                                    ref :>> involved = '678b5653-4dfe-4d9e-962e-db56601ddf0d';

                                } 
                            connection '2ebd9fa9-c9da-444d-9fe9-0a5567720e57' : FunctionalChainInvolvementLink 
                                connect source ::> '3a37ac67-7750-4f4d-b6b3-5cd9fc8d1fe0'
                                to  target ::> '75392d02-b8be-4ec4-bfa8-96ccd0bf3f7d' {

                                    ref :>> involved = 'e46534c7-f2ea-4987-a54e-1e5284ceac34';

                                } 
                            ref action 'efe4bbf1-b079-4f0e-981a-593a6034149b' = 'Amplify Force'; 
                            connection '32d78a10-cffe-4da4-ac2f-bc90f93b39d3' : FunctionalChainInvolvementLink 
                                connect source ::> '75392d02-b8be-4ec4-bfa8-96ccd0bf3f7d'
                                to  target ::> 'fcba670d-1251-4a87-8d21-913f81c2630c' {

                                    ref :>> involved = '101a79b8-528c-4a65-ac23-952035322ae9';

                                } 
                            ref action '2e190f15-bb07-4f78-8679-147ff0571f2e' = 'Position Pads'; 
                            connection '813fb4b8-0329-4ff4-96c8-695ee7ae3f8f' : FunctionalChainInvolvementLink 
                                connect source ::> 'fcba670d-1251-4a87-8d21-913f81c2630c'
                                to  target ::> '1184c07f-da90-49e2-817b-1b7cfa1cbf5c' {

                                    ref :>> involved = '770dedc8-1a04-4afd-8183-7c575263fa14';

                                } 
                            ref action 'bba5daf9-ac8e-4bcc-9350-e3180080749d' = 'Apply Friction to Rotors'; 
                            connection '99bde598-4f8b-4aad-8501-8818c4210f58' : FunctionalChainInvolvementLink 
                                connect source ::> '1184c07f-da90-49e2-817b-1b7cfa1cbf5c'
                                to  target ::> 'fd5edb72-d4da-4c57-90a4-b1e18be14ed2' {

                                    ref :>> involved = '0f339377-0ff7-4b5c-b464-8f999bad65e9';

                                } 
                            ref action 'fd5edb72-d4da-4c57-90a4-b1e18be14ed2' = 'Gather 17'; 
                            connection 'f25a4aaa-f6b5-4964-adc8-4bfc0e5ca1db' : FunctionalChainInvolvementLink 
                                connect source ::> 'fd5edb72-d4da-4c57-90a4-b1e18be14ed2'
                                to  target ::> 'b707a76b-6bcc-48e0-bedc-83d14636de9a' {

                                    ref :>> involved = '420907b8-393a-472d-803b-c3c6e5fad866';

                                } 
                            ref action 'b707a76b-6bcc-48e0-bedc-83d14636de9a' = 'Transfer Propulson and Stopping Force'; 
                            ref action 'c7831061-bc57-4dfa-8c02-4a1a20a581de' = 'Capture Brake Input'.'Capture Left Brake Input'; 
                            ref action '9e8b82c4-7f3a-44d7-8eb0-cc54e8f692a1' = 'Modulate Input Forces'.'Modulate Left Input Force'; 
                            ref action 'ef71e55d-c371-4a6e-94a1-331fcbc25665' = 'Translate Mechanical Action to Signal'.'Translate Mechanical Left Action to Signal '; 
                            ref action '8e801c43-abda-4d6c-9586-2196908f3ad4' = 'Tranmit Signal'.'Transmit Left Signal'; 
                            ref action '8355815f-794c-4f41-9110-d6e6acabf2a7' = 'Transmit Signal'.'Transmit Left Signal'; 
                            ref action '3a37ac67-7750-4f4d-b6b3-5cd9fc8d1fe0' = 'Receive Signal'.'Receive Left Signal'; 
                            ref action '75392d02-b8be-4ec4-bfa8-96ccd0bf3f7d' = 'Amplify Force'.'Amplify Left Signal'; 
                            ref action 'fcba670d-1251-4a87-8d21-913f81c2630c' = 'Position Pads'.'Position Front Right Pad'; 
                            ref action '1184c07f-da90-49e2-817b-1b7cfa1cbf5c' = 'Apply Friction to Rotors'.'Convert Friction Force to Stopping Torque'; 
                            ref action 'decfe5a5-6063-43c4-b52b-72e9b4b411b3' = 'Activate Left Brake'; 
                             
                        }  
                        action 'Brake Feedback' : FunctionalChain  { 
                            @CapellaID { eid = "58adc0c9-9b86-4e4f-b2bc-43a2a2e3933b"; } 
                            attribute :>> kind = FunctionalChainKind::SIMPLE; 
                            connection '57f93d9c-6fc1-4c93-b306-86eb0830aebd' : FunctionalChainInvolvementLink 
                                connect source ::> '3800019b-3532-4204-8fa8-c110211a65bf'
                                to  target ::> '95ad3c94-666a-4b9a-9d4d-4b5f6fbdc267' {

                                    ref :>> involved = 'f0a1523f-46a1-4b67-bfb4-9ca8e325da14';

                                } 
                            ref action '95ad3c94-666a-4b9a-9d4d-4b5f6fbdc267' = 'Monitor Pad Wear'; 
                            ref action '3800019b-3532-4204-8fa8-c110211a65bf' = 'Detect Brake Engagement Level'; 
                            connection '9f26dccb-7bff-489d-8f5f-ef0cf504698d' : FunctionalChainInvolvementLink 
                                connect source ::> '95ad3c94-666a-4b9a-9d4d-4b5f6fbdc267'
                                to  target ::> 'de803a62-431c-4896-9f7f-64bf57de64e3' {

                                    ref :>> involved = 'db8942ec-ffb7-4d07-abbf-4d2aa4fd6ebe';

                                } 
                            ref action 'de803a62-431c-4896-9f7f-64bf57de64e3' = 'Report Status to Rider'; 
                            connection 'fe44a134-f627-4655-a64b-83d383757448' : FunctionalChainInvolvementLink 
                                connect source ::> 'de803a62-431c-4896-9f7f-64bf57de64e3'
                                to  target ::> '10d2e835-95c7-4dd0-8712-b9f8d2502a4b' {

                                    ref :>> involved = '98b039ea-0f5b-4b4b-bda5-ccb7529d3c36';

                                } 
                            ref action '10d2e835-95c7-4dd0-8712-b9f8d2502a4b' = 'Observe Status'; 
                             
                        }  
                        action 'Brake Diagnostics' : FunctionalChain  { 
                            @CapellaID { eid = "873ebf04-524b-4a25-b504-b1623a90a04a"; } 
                            attribute :>> kind = FunctionalChainKind::SIMPLE; 
                            connection 'd6cf5baa-b707-46e6-b12f-817b38fb8f28' : FunctionalChainInvolvementLink 
                                connect source ::> 'de58cc82-a663-4093-978e-cce6c09122df'
                                to  target ::> 'dd365bdf-ff3c-43bf-9e88-44c3d3658f96' {

                                    ref :>> involved = 'dc66cee8-ff16-4d25-b988-ea1d763276bd';

                                } 
                            ref action 'dd365bdf-ff3c-43bf-9e88-44c3d3658f96' = 'Transmit Data'; 
                            ref action 'de58cc82-a663-4093-978e-cce6c09122df' = 'Detect Brake Engagement Level'; 
                            connection '086a2b63-ce3f-412d-b8ef-2e5eaac8cdc0' : FunctionalChainInvolvementLink 
                                connect source ::> 'dd365bdf-ff3c-43bf-9e88-44c3d3658f96'
                                to  target ::> 'fc8538bc-00cd-43ef-b7b8-e6d94fb65fae' {

                                    ref :>> involved = '3ab52204-b1bd-4f65-902c-cd7f84e8041a';

                                } 
                            ref action 'fc8538bc-00cd-43ef-b7b8-e6d94fb65fae' = 'Monitor Diagnostics'; 
                             
                        }  
                        action 'Capture Brake Input' : PhysicalFunction  { 
                            doc /*
                            <p>Detect and receive force or movement from rider (e.g., lever pull).</p>

                            */ 
                            @CapellaID { eid = "2c75ecb6-9016-4a7f-b240-eda7986eb550"; } 
                            attribute :>> aggregationKind = AggregationKind::UNSET; 
                            attribute :>> isFinal = false; 
                            attribute :>> isAbstract = false; 
                            attribute :>> isDerived = false; 
                            attribute :>> isPartOfKey = false; 
                            attribute :>> isReadOnly = false; 
                            attribute :>> isStatic = false; 
                            attribute :>> kind = FunctionKind::FUNCTION; 
                            attribute :>> isMaxInclusive = false; 
                            attribute :>> isMinInclusive = false; 
                            attribute :>> isOrdered = false; 
                            attribute :>> isUnique = false; 
                            action 'Capture Left Brake Input' : PhysicalFunction  { 
                                @CapellaID { eid = "e3bd8d59-32fa-4b98-a640-7230403ec084"; } 
                                attribute :>> aggregationKind = AggregationKind::UNSET; 
                                attribute :>> isFinal = false; 
                                attribute :>> isAbstract = false; 
                                attribute :>> isDerived = false; 
                                attribute :>> isPartOfKey = false; 
                                attribute :>> isReadOnly = false; 
                                attribute :>> isStatic = false; 
                                attribute :>> kind = FunctionKind::FUNCTION; 
                                attribute :>> isMaxInclusive = false; 
                                attribute :>> isMinInclusive = false; 
                                attribute :>> isOrdered = false; 
                                attribute :>> isUnique = false; 
                                in port 'FIP 1' : FunctionInputPort  { 
                                    @CapellaID { eid = "f7f21d58-b847-48ab-a512-7a71fdee094f"; } 
                                    attribute :>> isControl = false; 
                                    attribute :>> isControlType = false; 
                                    attribute :>> kindOfNode = ObjectNodeKind::Unspecified; 
                                    attribute :>> ordering = ObjectNodeOrderingKind::FIFO; 
                                     
                                    ref :>> incomingExchangeItems =  ('System Analysis'::'Data'::'Force'); 
                                }  
                                out port 'FOP 1' : FunctionOutputPort  { 
                                    @CapellaID { eid = "22802b7c-3486-45ca-9e2e-e055145ae004"; } 
                                    attribute :>> isControl = false; 
                                    attribute :>> isControlType = false; 
                                    attribute :>> kindOfNode = ObjectNodeKind::Unspecified; 
                                    attribute :>> ordering = ObjectNodeOrderingKind::FIFO; 
                                     
                                }  
                                ref :>> inputs =  ('FIP 1'); 
                                ref :>> outputs =  ('FOP 1'); 
                            }  
                            action 'Capture Right Brake Input' : PhysicalFunction  { 
                                @CapellaID { eid = "b88eb9f8-7a87-4e94-899f-bcde01aac593"; } 
                                attribute :>> aggregationKind = AggregationKind::UNSET; 
                                attribute :>> isFinal = false; 
                                attribute :>> isAbstract = false; 
                                attribute :>> isDerived = false; 
                                attribute :>> isPartOfKey = false; 
                                attribute :>> isReadOnly = false; 
                                attribute :>> isStatic = false; 
                                attribute :>> kind = FunctionKind::FUNCTION; 
                                attribute :>> isMaxInclusive = false; 
                                attribute :>> isMinInclusive = false; 
                                attribute :>> isOrdered = false; 
                                attribute :>> isUnique = false; 
                                in port 'FIP 1' : FunctionInputPort  { 
                                    @CapellaID { eid = "31acd7fa-9ead-4642-aa35-472b9c7a017e"; } 
                                    attribute :>> isControl = false; 
                                    attribute :>> isControlType = false; 
                                    attribute :>> kindOfNode = ObjectNodeKind::Unspecified; 
                                    attribute :>> ordering = ObjectNodeOrderingKind::FIFO; 
                                }  
                                out port 'FOP 1' : FunctionOutputPort  { 
                                    @CapellaID { eid = "d56148bf-268e-4920-acb6-c64ef8c30052"; } 
                                    attribute :>> isControl = false; 
                                    attribute :>> isControlType = false; 
                                    attribute :>> kindOfNode = ObjectNodeKind::Unspecified; 
                                    attribute :>> ordering = ObjectNodeOrderingKind::FIFO; 
                                }  
                                ref :>> inputs =  ('FIP 1'); 
                                ref :>> outputs =  ('FOP 1'); 
                            }  
                            ref :>> ownedFunctions =  ('Capture Left Brake Input',
                            'Capture Right Brake Input'); 
                             
                        }  
                        action 'Modulate Input Forces' : PhysicalFunction  { 
                            doc /*
                            <p>Allow rider to vary braking intensity (analog or digital modulation).</p>

                            */ 
                            @CapellaID { eid = "3762308d-f4d9-42dd-ba69-ccee6421fe90"; } 
                            attribute :>> aggregationKind = AggregationKind::UNSET; 
                            attribute :>> isFinal = false; 
                            attribute :>> isAbstract = false; 
                            attribute :>> isDerived = false; 
                            attribute :>> isPartOfKey = false; 
                            attribute :>> isReadOnly = false; 
                            attribute :>> isStatic = false; 
                            attribute :>> kind = FunctionKind::FUNCTION; 
                            attribute :>> isMaxInclusive = false; 
                            attribute :>> isMinInclusive = false; 
                            attribute :>> isOrdered = false; 
                            attribute :>> isUnique = false; 
                            interface '6c0d9295-1c8a-46bc-81e6-a5293c917fcc' : FunctionalExchange 
                                connect source ::> 'Store Left Fluid'.'FOP 1'
                                to target ::> 'Modulate Left Input Force'.'FIP 2' { 
                                @CapellaID { eid = "6c0d9295-1c8a-46bc-81e6-a5293c917fcc"; } 
                                attribute :>> isMulticast = false; 
                                attribute :>> isMultireceive = false; 
                                attribute :>> kindOfRate = RateKind::Unspecified; 
                                attribute :>> interfaceName = "Fluid"; 
                            }  
                            interface 'a8289f09-22c2-4b45-8eda-7ec5b8ced5c8' : FunctionalExchange 
                                connect source ::> 'Store Right Fluid'.'FOP 1'
                                to target ::> 'Modulate Right Input Force'.'FIP 2' { 
                                @CapellaID { eid = "a8289f09-22c2-4b45-8eda-7ec5b8ced5c8"; } 
                                attribute :>> isMulticast = false; 
                                attribute :>> isMultireceive = false; 
                                attribute :>> kindOfRate = RateKind::Unspecified; 
                                attribute :>> interfaceName = "Fluid"; 
                            }  
                            action 'Rear Brake Stopping' : FunctionalChain  { 
                                @CapellaID { eid = "f1ddbeea-47a3-411c-856c-38f711cf64e3"; } 
                                attribute :>> kind = FunctionalChainKind::SIMPLE; 
                                connection 'e5286574-c922-4a08-9d9d-1b8734bde9e2' : FunctionalChainInvolvementLink 
                                    connect source ::> '7ac701f8-afae-45bc-8347-f2f44f5ecd65'
                                    to  target ::> '4d4ed91c-2557-4411-9b8a-5a49f161726b' {

                                        ref :>> involved = '107d695a-7947-436c-ab45-f32601351120';

                                    } 
                                ref action '4d4ed91c-2557-4411-9b8a-5a49f161726b' = 'Modulate Right Input Force'; 
                                ref action '7ac701f8-afae-45bc-8347-f2f44f5ecd65' = 'Capture Brake Input'.'Capture Right Brake Input'; 
                                connection '93d72c03-539f-479e-8f2a-1fcf1542ff41' : FunctionalChainInvolvementLink 
                                    connect source ::> '4d4ed91c-2557-4411-9b8a-5a49f161726b'
                                    to  target ::> '6ecaa74b-c8ed-4c6e-acfc-243acab40604' {

                                        ref :>> involved = '22245a58-6a60-4231-a8b0-a5c1bd2615a0';

                                    } 
                                ref action '6ecaa74b-c8ed-4c6e-acfc-243acab40604' = 'Transmit Force'.'Transmit Right Force'; 
                                connection 'c21b522a-703b-4e79-b05c-36a1e7661e77' : FunctionalChainInvolvementLink 
                                    connect source ::> '6ecaa74b-c8ed-4c6e-acfc-243acab40604'
                                    to  target ::> '4c44f9cb-b1d2-4959-9dac-2852fbc7c2d2' {

                                        ref :>> involved = '3efa0745-98a6-45df-afc5-407fc318896e';

                                    } 
                                ref action '4c44f9cb-b1d2-4959-9dac-2852fbc7c2d2' = 'Transmit Force '.'Tranmit Right Force'; 
                                connection 'cde4ca53-f917-43ea-9842-47b366a4f232' : FunctionalChainInvolvementLink 
                                    connect source ::> '4c44f9cb-b1d2-4959-9dac-2852fbc7c2d2'
                                    to  target ::> 'b78b8092-3ac4-42b3-8417-6dae898605f8' {

                                        ref :>> involved = '831291ae-5f9e-4271-9d02-4d652c19176e';

                                    } 
                                ref action 'b78b8092-3ac4-42b3-8417-6dae898605f8' = 'Receive Force'.'Receive Rear Force'; 
                                connection '497f759d-dcaf-4249-b08c-ea79adfffaa4' : FunctionalChainInvolvementLink 
                                    connect source ::> 'b78b8092-3ac4-42b3-8417-6dae898605f8'
                                    to  target ::> 'f8ca7067-f222-4ce3-b669-37ca62c6376f' {

                                        ref :>> involved = '457087c1-dfd6-47b1-93ab-d3b07aaffd96';

                                    } 
                                ref action 'f8ca7067-f222-4ce3-b669-37ca62c6376f' = 'Amplify Force'.'Amplify Rear Force'; 
                                connection '5b9724a8-bc67-4afe-8690-a77db60167eb' : FunctionalChainInvolvementLink 
                                    connect source ::> 'f8ca7067-f222-4ce3-b669-37ca62c6376f'
                                    to  target ::> 'd65182f1-1728-4b52-90f0-2e16b4aca83b' {

                                        ref :>> involved = '6fa1b1fd-8afc-4529-a200-b49b1c88f45f';

                                    } 
                                ref action 'd65182f1-1728-4b52-90f0-2e16b4aca83b' = 'Position Pads'.'Position Rear Left Pad'; 
                                connection 'abf24f97-f427-4c67-877d-7bf2c5453e6a' : FunctionalChainInvolvementLink 
                                    connect source ::> 'f8ca7067-f222-4ce3-b669-37ca62c6376f'
                                    to  target ::> 'e49daddf-2686-4b4f-b2fe-832351a46854' {

                                        ref :>> involved = 'eb93c1e9-f8f6-49d2-8865-be38b83fc78d';

                                    } 
                                ref action 'e49daddf-2686-4b4f-b2fe-832351a46854' = 'Position Pads'.'Position Rear Right Pad '; 
                                connection '1fc363b6-7f8c-414d-b918-f8fbc3a89d3d' : FunctionalChainInvolvementLink 
                                    connect source ::> 'd65182f1-1728-4b52-90f0-2e16b4aca83b'
                                    to  target ::> '43fe5272-215b-4274-819e-6c0731a206f9' {

                                        ref :>> involved = 'bfc10a00-2b64-45c7-a123-a1ba15555a46';

                                    } 
                                ref action '43fe5272-215b-4274-819e-6c0731a206f9' = 'Friction to Rotors'.'Convert Friction Force to Stopping Torque'; 
                                connection '7ffb351d-9872-4ad4-863a-bdccb9119311' : FunctionalChainInvolvementLink 
                                    connect source ::> 'e49daddf-2686-4b4f-b2fe-832351a46854'
                                    to  target ::> '43fe5272-215b-4274-819e-6c0731a206f9' {

                                        ref :>> involved = '0aeaacf1-afe0-4d37-b005-cee78cf95e96';

                                    } 
                            }  
                            action 'Modulate Left Input Force' : PhysicalFunction  { 
                                @CapellaID { eid = "e2b6da81-91f7-4312-8197-a862b93aaf4e"; } 
                                attribute :>> aggregationKind = AggregationKind::UNSET; 
                                attribute :>> isFinal = false; 
                                attribute :>> isAbstract = false; 
                                attribute :>> isDerived = false; 
                                attribute :>> isPartOfKey = false; 
                                attribute :>> isReadOnly = false; 
                                attribute :>> isStatic = false; 
                                attribute :>> kind = FunctionKind::FUNCTION; 
                                attribute :>> isMaxInclusive = false; 
                                attribute :>> isMinInclusive = false; 
                                attribute :>> isOrdered = false; 
                                attribute :>> isUnique = false; 
                                in port 'FIP 1' : FunctionInputPort  { 
                                    @CapellaID { eid = "b32ddf21-bae1-41dc-88ed-c2e839e280c9"; } 
                                    attribute :>> isControl = false; 
                                    attribute :>> isControlType = false; 
                                    attribute :>> kindOfNode = ObjectNodeKind::Unspecified; 
                                    attribute :>> ordering = ObjectNodeOrderingKind::FIFO; 
                                     
                                }  
                                in port 'FIP 2' : FunctionInputPort  { 
                                    @CapellaID { eid = "f8995a3f-9d45-4667-bbdb-cfcb7bd0400a"; } 
                                    attribute :>> isControl = false; 
                                    attribute :>> isControlType = false; 
                                    attribute :>> kindOfNode = ObjectNodeKind::Unspecified; 
                                    attribute :>> ordering = ObjectNodeOrderingKind::FIFO; 
                                }  
                                out port 'FOP 2' : FunctionOutputPort  { 
                                    @CapellaID { eid = "3655d05f-ef46-4803-b6ff-8be1a02ebc89"; } 
                                    attribute :>> isControl = false; 
                                    attribute :>> isControlType = false; 
                                    attribute :>> kindOfNode = ObjectNodeKind::Unspecified; 
                                    attribute :>> ordering = ObjectNodeOrderingKind::FIFO; 
                                     
                                }  
                                out port 'FOP 1' : FunctionOutputPort  { 
                                    @CapellaID { eid = "c6f3c224-9c14-4384-8882-cfa0290fcf2a"; } 
                                    attribute :>> isControl = false; 
                                    attribute :>> isControlType = false; 
                                    attribute :>> kindOfNode = ObjectNodeKind::Unspecified; 
                                    attribute :>> ordering = ObjectNodeOrderingKind::FIFO; 
                                     
                                }  
                                ref :>> inputs =  ('FIP 1',
                                'FIP 2'); 
                                ref :>> outputs =  ('FOP 2',
                                'FOP 1'); 
                            }  
                            action 'Modulate Right Input Force' : PhysicalFunction  { 
                                @CapellaID { eid = "a8468b88-23d9-4e6b-912f-5e23d66ca8de"; } 
                                attribute :>> aggregationKind = AggregationKind::UNSET; 
                                attribute :>> isFinal = false; 
                                attribute :>> isAbstract = false; 
                                attribute :>> isDerived = false; 
                                attribute :>> isPartOfKey = false; 
                                attribute :>> isReadOnly = false; 
                                attribute :>> isStatic = false; 
                                attribute :>> kind = FunctionKind::FUNCTION; 
                                attribute :>> isMaxInclusive = false; 
                                attribute :>> isMinInclusive = false; 
                                attribute :>> isOrdered = false; 
                                attribute :>> isUnique = false; 
                                in port 'FIP 1' : FunctionInputPort  { 
                                    @CapellaID { eid = "6823372d-c62e-4fa4-9a9f-d844b5d4747a"; } 
                                    attribute :>> isControl = false; 
                                    attribute :>> isControlType = false; 
                                    attribute :>> kindOfNode = ObjectNodeKind::Unspecified; 
                                    attribute :>> ordering = ObjectNodeOrderingKind::FIFO; 
                                }  
                                in port 'FIP 2' : FunctionInputPort  { 
                                    @CapellaID { eid = "76155d65-c0a8-4ccf-86e6-c4a07b461fd0"; } 
                                    attribute :>> isControl = false; 
                                    attribute :>> isControlType = false; 
                                    attribute :>> kindOfNode = ObjectNodeKind::Unspecified; 
                                    attribute :>> ordering = ObjectNodeOrderingKind::FIFO; 
                                }  
                                out port 'FOP 1' : FunctionOutputPort  { 
                                    @CapellaID { eid = "cdc55532-895b-4c8a-8426-70a736912582"; } 
                                    attribute :>> isControl = false; 
                                    attribute :>> isControlType = false; 
                                    attribute :>> kindOfNode = ObjectNodeKind::Unspecified; 
                                    attribute :>> ordering = ObjectNodeOrderingKind::FIFO; 
                                }  
                                out port 'FOP 2' : FunctionOutputPort  { 
                                    @CapellaID { eid = "3aa4519d-7ea3-44ac-b5a2-93419e4e502a"; } 
                                    attribute :>> isControl = false; 
                                    attribute :>> isControlType = false; 
                                    attribute :>> kindOfNode = ObjectNodeKind::Unspecified; 
                                    attribute :>> ordering = ObjectNodeOrderingKind::FIFO; 
                                }  
                                ref :>> inputs =  ('FIP 1',
                                'FIP 2'); 
                                ref :>> outputs =  ('FOP 1',
                                'FOP 2'); 
                            }  
                            action 'Store Right Fluid' : PhysicalFunction  { 
                                @CapellaID { eid = "b2ae0bc9-07ff-49ab-a143-9856abfe6fa0"; } 
                                attribute :>> aggregationKind = AggregationKind::UNSET; 
                                attribute :>> isFinal = false; 
                                attribute :>> isAbstract = false; 
                                attribute :>> isDerived = false; 
                                attribute :>> isPartOfKey = false; 
                                attribute :>> isReadOnly = false; 
                                attribute :>> isStatic = false; 
                                attribute :>> kind = FunctionKind::FUNCTION; 
                                attribute :>> isMaxInclusive = false; 
                                attribute :>> isMinInclusive = false; 
                                attribute :>> isOrdered = false; 
                                attribute :>> isUnique = false; 
                                in port 'FIP 1' : FunctionInputPort  { 
                                    @CapellaID { eid = "07afe1e7-4303-4399-9404-5a6d5672f374"; } 
                                    attribute :>> isControl = false; 
                                    attribute :>> isControlType = false; 
                                    attribute :>> kindOfNode = ObjectNodeKind::Unspecified; 
                                    attribute :>> ordering = ObjectNodeOrderingKind::FIFO; 
                                }  
                                out port 'FOP 1' : FunctionOutputPort  { 
                                    @CapellaID { eid = "c15d4690-c891-444f-8144-f3e0e1beeed2"; } 
                                    attribute :>> isControl = false; 
                                    attribute :>> isControlType = false; 
                                    attribute :>> kindOfNode = ObjectNodeKind::Unspecified; 
                                    attribute :>> ordering = ObjectNodeOrderingKind::FIFO; 
                                }  
                                ref :>> inputs =  ('FIP 1'); 
                                ref :>> outputs =  ('FOP 1'); 
                            }  
                            action 'Store Left Fluid' : PhysicalFunction  { 
                                @CapellaID { eid = "0e4da19a-3c5b-4d03-a900-9c0907655605"; } 
                                attribute :>> aggregationKind = AggregationKind::UNSET; 
                                attribute :>> isFinal = false; 
                                attribute :>> isAbstract = false; 
                                attribute :>> isDerived = false; 
                                attribute :>> isPartOfKey = false; 
                                attribute :>> isReadOnly = false; 
                                attribute :>> isStatic = false; 
                                attribute :>> kind = FunctionKind::FUNCTION; 
                                attribute :>> isMaxInclusive = false; 
                                attribute :>> isMinInclusive = false; 
                                attribute :>> isOrdered = false; 
                                attribute :>> isUnique = false; 
                                in port 'FIP 1' : FunctionInputPort  { 
                                    @CapellaID { eid = "9e995c41-971c-43c8-8e8e-d0ab62954b62"; } 
                                    attribute :>> isControl = false; 
                                    attribute :>> isControlType = false; 
                                    attribute :>> kindOfNode = ObjectNodeKind::Unspecified; 
                                    attribute :>> ordering = ObjectNodeOrderingKind::FIFO; 
                                }  
                                out port 'FOP 1' : FunctionOutputPort  { 
                                    @CapellaID { eid = "efc2f3fb-6f03-4b58-a798-93dc25f68844"; } 
                                    attribute :>> isControl = false; 
                                    attribute :>> isControlType = false; 
                                    attribute :>> kindOfNode = ObjectNodeKind::Unspecified; 
                                    attribute :>> ordering = ObjectNodeOrderingKind::FIFO; 
                                }  
                                ref :>> inputs =  ('FIP 1'); 
                                ref :>> outputs =  ('FOP 1'); 
                            }  
                            ref :>> ownedFunctionalExchanges =  ('6c0d9295-1c8a-46bc-81e6-a5293c917fcc',
                            'a8289f09-22c2-4b45-8eda-7ec5b8ced5c8'); 
                            ref :>> ownedFunctions =  ('Modulate Left Input Force',
                            'Modulate Right Input Force',
                            'Store Right Fluid',
                            'Store Left Fluid'); 
                             
                        }  
                        action 'Translate Mechanical Action to Signal' : PhysicalFunction  { 
                            doc /*
                            <p>Convert physical movement into a control signal.</p>

                            */ 
                            @CapellaID { eid = "eac21e56-d55c-493b-bcd1-cba3f0408747"; } 
                            attribute :>> aggregationKind = AggregationKind::UNSET; 
                            attribute :>> isFinal = false; 
                            attribute :>> isAbstract = false; 
                            attribute :>> isDerived = false; 
                            attribute :>> isPartOfKey = false; 
                            attribute :>> isReadOnly = false; 
                            attribute :>> isStatic = false; 
                            attribute :>> kind = FunctionKind::FUNCTION; 
                            attribute :>> isMaxInclusive = false; 
                            attribute :>> isMinInclusive = false; 
                            attribute :>> isOrdered = false; 
                            attribute :>> isUnique = false; 
                            action 'Translate Mechanical Left Action to Signal ' : PhysicalFunction  { 
                                @CapellaID { eid = "98aeff5f-fae1-43d9-9469-28b169c6d089"; } 
                                attribute :>> aggregationKind = AggregationKind::UNSET; 
                                attribute :>> isFinal = false; 
                                attribute :>> isAbstract = false; 
                                attribute :>> isDerived = false; 
                                attribute :>> isPartOfKey = false; 
                                attribute :>> isReadOnly = false; 
                                attribute :>> isStatic = false; 
                                attribute :>> kind = FunctionKind::FUNCTION; 
                                attribute :>> isMaxInclusive = false; 
                                attribute :>> isMinInclusive = false; 
                                attribute :>> isOrdered = false; 
                                attribute :>> isUnique = false; 
                                in port 'FIP 1' : FunctionInputPort  { 
                                    @CapellaID { eid = "1156fabf-f25f-4961-945e-12abf904b597"; } 
                                    attribute :>> isControl = false; 
                                    attribute :>> isControlType = false; 
                                    attribute :>> kindOfNode = ObjectNodeKind::Unspecified; 
                                    attribute :>> ordering = ObjectNodeOrderingKind::FIFO; 
                                     
                                }  
                                out port 'FOP 1' : FunctionOutputPort  { 
                                    @CapellaID { eid = "69f47458-d84e-497a-a9e8-b98e9d6668df"; } 
                                    attribute :>> isControl = false; 
                                    attribute :>> isControlType = false; 
                                    attribute :>> kindOfNode = ObjectNodeKind::Unspecified; 
                                    attribute :>> ordering = ObjectNodeOrderingKind::FIFO; 
                                     
                                }  
                                ref :>> inputs =  ('FIP 1'); 
                                ref :>> outputs =  ('FOP 1'); 
                            }  
                            action 'Tranlate Mechanical Right  Action to Signal ' : PhysicalFunction  { 
                                @CapellaID { eid = "48729027-a4ee-4991-af1b-4c38102e49c6"; } 
                                attribute :>> aggregationKind = AggregationKind::UNSET; 
                                attribute :>> isFinal = false; 
                                attribute :>> isAbstract = false; 
                                attribute :>> isDerived = false; 
                                attribute :>> isPartOfKey = false; 
                                attribute :>> isReadOnly = false; 
                                attribute :>> isStatic = false; 
                                attribute :>> kind = FunctionKind::FUNCTION; 
                                attribute :>> isMaxInclusive = false; 
                                attribute :>> isMinInclusive = false; 
                                attribute :>> isOrdered = false; 
                                attribute :>> isUnique = false; 
                                in port 'FIP 1' : FunctionInputPort  { 
                                    @CapellaID { eid = "9b10ea4f-a7bf-4e9b-9c12-ad541d04211e"; } 
                                    attribute :>> isControl = false; 
                                    attribute :>> isControlType = false; 
                                    attribute :>> kindOfNode = ObjectNodeKind::Unspecified; 
                                    attribute :>> ordering = ObjectNodeOrderingKind::FIFO; 
                                }  
                                out port 'FOP 1' : FunctionOutputPort  { 
                                    @CapellaID { eid = "799dce5a-37ec-428a-98ba-8fabe3d7ae40"; } 
                                    attribute :>> isControl = false; 
                                    attribute :>> isControlType = false; 
                                    attribute :>> kindOfNode = ObjectNodeKind::Unspecified; 
                                    attribute :>> ordering = ObjectNodeOrderingKind::FIFO; 
                                }  
                                ref :>> inputs =  ('FIP 1'); 
                                ref :>> outputs =  ('FOP 1'); 
                            }  
                            ref :>> ownedFunctions =  ('Translate Mechanical Left Action to Signal ',
                            'Tranlate Mechanical Right  Action to Signal '); 
                             
                        }  
                        action 'Tranmit Signal' : PhysicalFunction  { 
                            doc /*
                            <p>&nbsp;Pass force or signal downstream.</p>

                            */ 
                            @CapellaID { eid = "8ae26c9b-e66b-4723-8d52-51dcebff0e2f"; } 
                            attribute :>> aggregationKind = AggregationKind::UNSET; 
                            attribute :>> isFinal = false; 
                            attribute :>> isAbstract = false; 
                            attribute :>> isDerived = false; 
                            attribute :>> isPartOfKey = false; 
                            attribute :>> isReadOnly = false; 
                            attribute :>> isStatic = false; 
                            attribute :>> kind = FunctionKind::FUNCTION; 
                            attribute :>> isMaxInclusive = false; 
                            attribute :>> isMinInclusive = false; 
                            attribute :>> isOrdered = false; 
                            attribute :>> isUnique = false; 
                            action 'Transmit Left Signal' : PhysicalFunction  { 
                                @CapellaID { eid = "2bfcf32c-99e6-41ce-8b2c-8d5c4720e2d3"; } 
                                attribute :>> aggregationKind = AggregationKind::UNSET; 
                                attribute :>> isFinal = false; 
                                attribute :>> isAbstract = false; 
                                attribute :>> isDerived = false; 
                                attribute :>> isPartOfKey = false; 
                                attribute :>> isReadOnly = false; 
                                attribute :>> isStatic = false; 
                                attribute :>> kind = FunctionKind::FUNCTION; 
                                attribute :>> isMaxInclusive = false; 
                                attribute :>> isMinInclusive = false; 
                                attribute :>> isOrdered = false; 
                                attribute :>> isUnique = false; 
                                in port 'FIP 1' : FunctionInputPort  { 
                                    @CapellaID { eid = "9e8e4837-aeab-4c77-93a3-940a9736dd58"; } 
                                    attribute :>> isControl = false; 
                                    attribute :>> isControlType = false; 
                                    attribute :>> kindOfNode = ObjectNodeKind::Unspecified; 
                                    attribute :>> ordering = ObjectNodeOrderingKind::FIFO; 
                                     
                                }  
                                out port 'FOP 1' : FunctionOutputPort  { 
                                    @CapellaID { eid = "bea40142-4e0a-4402-a30f-f3c3769e8fb9"; } 
                                    attribute :>> isControl = false; 
                                    attribute :>> isControlType = false; 
                                    attribute :>> kindOfNode = ObjectNodeKind::Unspecified; 
                                    attribute :>> ordering = ObjectNodeOrderingKind::FIFO; 
                                     
                                }  
                                ref :>> inputs =  ('FIP 1'); 
                                ref :>> outputs =  ('FOP 1'); 
                            }  
                            action 'Tranmit Right Signal' : PhysicalFunction  { 
                                @CapellaID { eid = "10c3016a-154c-4be3-8098-0b0ba3c7ea92"; } 
                                attribute :>> aggregationKind = AggregationKind::UNSET; 
                                attribute :>> isFinal = false; 
                                attribute :>> isAbstract = false; 
                                attribute :>> isDerived = false; 
                                attribute :>> isPartOfKey = false; 
                                attribute :>> isReadOnly = false; 
                                attribute :>> isStatic = false; 
                                attribute :>> kind = FunctionKind::FUNCTION; 
                                attribute :>> isMaxInclusive = false; 
                                attribute :>> isMinInclusive = false; 
                                attribute :>> isOrdered = false; 
                                attribute :>> isUnique = false; 
                                in port 'FIP 1' : FunctionInputPort  { 
                                    @CapellaID { eid = "e4030d5f-b783-498a-9d75-e884739fafd3"; } 
                                    attribute :>> isControl = false; 
                                    attribute :>> isControlType = false; 
                                    attribute :>> kindOfNode = ObjectNodeKind::Unspecified; 
                                    attribute :>> ordering = ObjectNodeOrderingKind::FIFO; 
                                }  
                                out port 'FOP 1' : FunctionOutputPort  { 
                                    @CapellaID { eid = "c3728760-2acd-4fbd-aee3-67fe57e58ffc"; } 
                                    attribute :>> isControl = false; 
                                    attribute :>> isControlType = false; 
                                    attribute :>> kindOfNode = ObjectNodeKind::Unspecified; 
                                    attribute :>> ordering = ObjectNodeOrderingKind::FIFO; 
                                }  
                                ref :>> inputs =  ('FIP 1'); 
                                ref :>> outputs =  ('FOP 1'); 
                            }  
                            out port 'FOP 2' : FunctionOutputPort  { 
                                @CapellaID { eid = "d2c19ab8-abd9-4a84-a4d5-edc143ff9f5f"; } 
                                attribute :>> isControl = false; 
                                attribute :>> isControlType = false; 
                                attribute :>> kindOfNode = ObjectNodeKind::Unspecified; 
                                attribute :>> ordering = ObjectNodeOrderingKind::FIFO; 
                            }  
                            ref :>> ownedFunctions =  ('Transmit Left Signal',
                            'Tranmit Right Signal'); 
                            ref :>> outputs =  ('FOP 2'); 
                             
                        }  
                        action 'Transmit Force' : PhysicalFunction  { 
                            @CapellaID { eid = "4ab81ad9-a70b-47e8-9d2a-f5a28245ee4a"; } 
                            attribute :>> aggregationKind = AggregationKind::UNSET; 
                            attribute :>> isFinal = false; 
                            attribute :>> isAbstract = false; 
                            attribute :>> isDerived = false; 
                            attribute :>> isPartOfKey = false; 
                            attribute :>> isReadOnly = false; 
                            attribute :>> isStatic = false; 
                            attribute :>> kind = FunctionKind::FUNCTION; 
                            attribute :>> isMaxInclusive = false; 
                            attribute :>> isMinInclusive = false; 
                            attribute :>> isOrdered = false; 
                            attribute :>> isUnique = false; 
                            action 'Transmit Left Force' : PhysicalFunction  { 
                                @CapellaID { eid = "28a11531-7459-4f63-9181-aba0b9298720"; } 
                                attribute :>> aggregationKind = AggregationKind::UNSET; 
                                attribute :>> isFinal = false; 
                                attribute :>> isAbstract = false; 
                                attribute :>> isDerived = false; 
                                attribute :>> isPartOfKey = false; 
                                attribute :>> isReadOnly = false; 
                                attribute :>> isStatic = false; 
                                attribute :>> kind = FunctionKind::FUNCTION; 
                                attribute :>> isMaxInclusive = false; 
                                attribute :>> isMinInclusive = false; 
                                attribute :>> isOrdered = false; 
                                attribute :>> isUnique = false; 
                                in port 'FIP 1' : FunctionInputPort  { 
                                    @CapellaID { eid = "f4e37f34-2477-41c2-bb1b-3e3128895758"; } 
                                    attribute :>> isControl = false; 
                                    attribute :>> isControlType = false; 
                                    attribute :>> kindOfNode = ObjectNodeKind::Unspecified; 
                                    attribute :>> ordering = ObjectNodeOrderingKind::FIFO; 
                                     
                                }  
                                out port 'FOP 1' : FunctionOutputPort  { 
                                    @CapellaID { eid = "d1146201-041b-4387-8f1d-ef1883a715c4"; } 
                                    attribute :>> isControl = false; 
                                    attribute :>> isControlType = false; 
                                    attribute :>> kindOfNode = ObjectNodeKind::Unspecified; 
                                    attribute :>> ordering = ObjectNodeOrderingKind::FIFO; 
                                     
                                }  
                                ref :>> inputs =  ('FIP 1'); 
                                ref :>> outputs =  ('FOP 1'); 
                            }  
                            action 'Transmit Right Force' : PhysicalFunction  { 
                                @CapellaID { eid = "8cd61a73-a8fe-458d-b9c9-c7bcf131b1be"; } 
                                attribute :>> aggregationKind = AggregationKind::UNSET; 
                                attribute :>> isFinal = false; 
                                attribute :>> isAbstract = false; 
                                attribute :>> isDerived = false; 
                                attribute :>> isPartOfKey = false; 
                                attribute :>> isReadOnly = false; 
                                attribute :>> isStatic = false; 
                                attribute :>> kind = FunctionKind::FUNCTION; 
                                attribute :>> isMaxInclusive = false; 
                                attribute :>> isMinInclusive = false; 
                                attribute :>> isOrdered = false; 
                                attribute :>> isUnique = false; 
                                in port 'FIP 1' : FunctionInputPort  { 
                                    @CapellaID { eid = "7151c9ae-a32a-4bff-87fa-ed9e0696d4d5"; } 
                                    attribute :>> isControl = false; 
                                    attribute :>> isControlType = false; 
                                    attribute :>> kindOfNode = ObjectNodeKind::Unspecified; 
                                    attribute :>> ordering = ObjectNodeOrderingKind::FIFO; 
                                }  
                                out port 'FOP 1' : FunctionOutputPort  { 
                                    @CapellaID { eid = "71f07ee6-b2bd-4fb7-ab7c-a3ea0494a926"; } 
                                    attribute :>> isControl = false; 
                                    attribute :>> isControlType = false; 
                                    attribute :>> kindOfNode = ObjectNodeKind::Unspecified; 
                                    attribute :>> ordering = ObjectNodeOrderingKind::FIFO; 
                                }  
                                ref :>> inputs =  ('FIP 1'); 
                                ref :>> outputs =  ('FOP 1'); 
                            }  
                            ref :>> ownedFunctions =  ('Transmit Left Force',
                            'Transmit Right Force'); 
                             
                        }  
                        action 'Transmit Force ' : PhysicalFunction  { 
                            doc /*
                            <p>Carry control input from the control subsystem to the actuation subsystem.</p>

                            */ 
                            @CapellaID { eid = "9ecf19dc-3ba0-4e7a-90e3-0605d9b7c811"; } 
                            attribute :>> aggregationKind = AggregationKind::UNSET; 
                            attribute :>> isFinal = false; 
                            attribute :>> isAbstract = false; 
                            attribute :>> isDerived = false; 
                            attribute :>> isPartOfKey = false; 
                            attribute :>> isReadOnly = false; 
                            attribute :>> isStatic = false; 
                            attribute :>> kind = FunctionKind::FUNCTION; 
                            attribute :>> isMaxInclusive = false; 
                            attribute :>> isMinInclusive = false; 
                            attribute :>> isOrdered = false; 
                            attribute :>> isUnique = false; 
                            dependency '5391e31c-5091-49ed-8763-7505d9f0eaed'
                                from 'Absorb Vibration or Back Pressure'
                                to  'Logical Architecture'::'Logical Functions'::'Root Logical Function'::'Provide Stopping'::'Transmit Force '::'Absorb Vibration or Back Pressure' { 
                                @TransfoLink { 
                                    @CapellaID { eid = "5391e31c-5091-49ed-8763-7505d9f0eaed"; } 
                                }  
                            }  
                            constraint 'Absorb Vibration or Back Pressure' : CapellaConstraint { 
                                language "capella:linkedText" /*  */
                                @CapellaID { eid = "d93fa120-901d-4756-8561-07e050f88826"; }
                                
                                ref :>> constrainedElements =  ('Bike BrakeSystem Library Library'::'Bike BrakeSystem Library'::'Physical Architecture'::'Physical Functions'::'Root Physical Function'.'Provide Stopping'.'Transmit Force ',
                                'Transmit Signal');
                            } 
                            action 'Transmit LeftForce' : PhysicalFunction  { 
                                @CapellaID { eid = "5f07d9d0-392d-4f51-ab09-c36e1378b6dc"; } 
                                attribute :>> aggregationKind = AggregationKind::UNSET; 
                                attribute :>> isFinal = false; 
                                attribute :>> isAbstract = false; 
                                attribute :>> isDerived = false; 
                                attribute :>> isPartOfKey = false; 
                                attribute :>> isReadOnly = false; 
                                attribute :>> isStatic = false; 
                                attribute :>> kind = FunctionKind::FUNCTION; 
                                attribute :>> isMaxInclusive = false; 
                                attribute :>> isMinInclusive = false; 
                                attribute :>> isOrdered = false; 
                                attribute :>> isUnique = false; 
                                in port 'FIP 1' : FunctionInputPort  { 
                                    @CapellaID { eid = "2e5eb5bb-40f0-42eb-b5f0-925cfc6f675b"; } 
                                    attribute :>> isControl = false; 
                                    attribute :>> isControlType = false; 
                                    attribute :>> kindOfNode = ObjectNodeKind::Unspecified; 
                                    attribute :>> ordering = ObjectNodeOrderingKind::FIFO; 
                                     
                                }  
                                out port 'FOP 1' : FunctionOutputPort  { 
                                    @CapellaID { eid = "7a163e17-ef7f-40fd-8095-c2a08aa99926"; } 
                                    attribute :>> isControl = false; 
                                    attribute :>> isControlType = false; 
                                    attribute :>> kindOfNode = ObjectNodeKind::Unspecified; 
                                    attribute :>> ordering = ObjectNodeOrderingKind::FIFO; 
                                     
                                }  
                                ref :>> inputs =  ('FIP 1'); 
                                ref :>> outputs =  ('FOP 1'); 
                            }  
                            action 'Tranmit Right Force' : PhysicalFunction  { 
                                @CapellaID { eid = "5a843c14-499b-41ec-94b3-d1bf224b460e"; } 
                                attribute :>> aggregationKind = AggregationKind::UNSET; 
                                attribute :>> isFinal = false; 
                                attribute :>> isAbstract = false; 
                                attribute :>> isDerived = false; 
                                attribute :>> isPartOfKey = false; 
                                attribute :>> isReadOnly = false; 
                                attribute :>> isStatic = false; 
                                attribute :>> kind = FunctionKind::FUNCTION; 
                                attribute :>> isMaxInclusive = false; 
                                attribute :>> isMinInclusive = false; 
                                attribute :>> isOrdered = false; 
                                attribute :>> isUnique = false; 
                                in port 'FIP 1' : FunctionInputPort  { 
                                    @CapellaID { eid = "d3c95221-6595-40d0-be9e-3c2e637f34c8"; } 
                                    attribute :>> isControl = false; 
                                    attribute :>> isControlType = false; 
                                    attribute :>> kindOfNode = ObjectNodeKind::Unspecified; 
                                    attribute :>> ordering = ObjectNodeOrderingKind::FIFO; 
                                }  
                                out port 'FOP 1' : FunctionOutputPort  { 
                                    @CapellaID { eid = "df56b91c-e99d-4356-a43d-7cfb22238964"; } 
                                    attribute :>> isControl = false; 
                                    attribute :>> isControlType = false; 
                                    attribute :>> kindOfNode = ObjectNodeKind::Unspecified; 
                                    attribute :>> ordering = ObjectNodeOrderingKind::FIFO; 
                                }  
                                ref :>> inputs =  ('FIP 1'); 
                                ref :>> outputs =  ('FOP 1'); 
                            }  
                            ref :>> ownedConstraints =  ('Absorb Vibration or Back Pressure'); 
                            ref :>> ownedFunctions =  ('Transmit LeftForce',
                            'Tranmit Right Force'); 
                             
                        }  
                        action 'Transmit Signal' : PhysicalFunction  { 
                            doc /*
                            <p>Carry control input from the control subsystem to the actuation subsystem.</p>

                            */ 
                            @CapellaID { eid = "188c042a-75c8-491c-a440-3f5ec1b1ef55"; } 
                            attribute :>> aggregationKind = AggregationKind::UNSET; 
                            attribute :>> isFinal = false; 
                            attribute :>> isAbstract = false; 
                            attribute :>> isDerived = false; 
                            attribute :>> isPartOfKey = false; 
                            attribute :>> isReadOnly = false; 
                            attribute :>> isStatic = false; 
                            attribute :>> kind = FunctionKind::FUNCTION; 
                            attribute :>> isMaxInclusive = false; 
                            attribute :>> isMinInclusive = false; 
                            attribute :>> isOrdered = false; 
                            attribute :>> isUnique = false; 
                            dependency 'a0f0a105-0513-4c30-8e2b-7b6aa3921340'
                                from 'Preserve Modulation Fidelity'
                                to  'Logical Architecture'::'Logical Functions'::'Root Logical Function'::'Provide Stopping'::'Transmit Signal'::'Preserve Modulation Fidelity' { 
                                @TransfoLink { 
                                    @CapellaID { eid = "a0f0a105-0513-4c30-8e2b-7b6aa3921340"; } 
                                }  
                            }  
                            constraint 'Preserve Modulation Fidelity' : CapellaConstraint { 
                                language "capella:linkedText" /*  */
                                @CapellaID { eid = "c2783804-8bb7-4121-997b-762e6c728a3a"; }
                                
                                ref :>> constrainedElements =  ('Bike BrakeSystem Library Library'::'Bike BrakeSystem Library'::'Physical Architecture'::'Physical Functions'::'Root Physical Function'.'Provide Stopping'.'Transmit Signal',
                                'Transmit Force ');
                            } 
                            action 'Transmit Left Signal' : PhysicalFunction  { 
                                @CapellaID { eid = "656c770a-259e-46bb-acd7-165e780f4398"; } 
                                attribute :>> aggregationKind = AggregationKind::UNSET; 
                                attribute :>> isFinal = false; 
                                attribute :>> isAbstract = false; 
                                attribute :>> isDerived = false; 
                                attribute :>> isPartOfKey = false; 
                                attribute :>> isReadOnly = false; 
                                attribute :>> isStatic = false; 
                                attribute :>> kind = FunctionKind::FUNCTION; 
                                attribute :>> isMaxInclusive = false; 
                                attribute :>> isMinInclusive = false; 
                                attribute :>> isOrdered = false; 
                                attribute :>> isUnique = false; 
                                in port 'FIP 1' : FunctionInputPort  { 
                                    @CapellaID { eid = "05de785e-b89f-4973-bcd4-8a9bbfa95423"; } 
                                    attribute :>> isControl = false; 
                                    attribute :>> isControlType = false; 
                                    attribute :>> kindOfNode = ObjectNodeKind::Unspecified; 
                                    attribute :>> ordering = ObjectNodeOrderingKind::FIFO; 
                                     
                                }  
                                out port 'FOP 1' : FunctionOutputPort  { 
                                    @CapellaID { eid = "09e52428-6604-4937-a0ae-ec6984861071"; } 
                                    attribute :>> isControl = false; 
                                    attribute :>> isControlType = false; 
                                    attribute :>> kindOfNode = ObjectNodeKind::Unspecified; 
                                    attribute :>> ordering = ObjectNodeOrderingKind::FIFO; 
                                     
                                }  
                                ref :>> inputs =  ('FIP 1'); 
                                ref :>> outputs =  ('FOP 1'); 
                            }  
                            action 'Tranmit Right Signal' : PhysicalFunction  { 
                                @CapellaID { eid = "0cfb7e53-aa0f-4d9e-b4ff-cd40dead606b"; } 
                                attribute :>> aggregationKind = AggregationKind::UNSET; 
                                attribute :>> isFinal = false; 
                                attribute :>> isAbstract = false; 
                                attribute :>> isDerived = false; 
                                attribute :>> isPartOfKey = false; 
                                attribute :>> isReadOnly = false; 
                                attribute :>> isStatic = false; 
                                attribute :>> kind = FunctionKind::FUNCTION; 
                                attribute :>> isMaxInclusive = false; 
                                attribute :>> isMinInclusive = false; 
                                attribute :>> isOrdered = false; 
                                attribute :>> isUnique = false; 
                                in port 'FIP 1' : FunctionInputPort  { 
                                    @CapellaID { eid = "c254e2b1-7dda-4130-ac9e-8f5bb6c6502f"; } 
                                    attribute :>> isControl = false; 
                                    attribute :>> isControlType = false; 
                                    attribute :>> kindOfNode = ObjectNodeKind::Unspecified; 
                                    attribute :>> ordering = ObjectNodeOrderingKind::FIFO; 
                                }  
                                out port 'FOP 1' : FunctionOutputPort  { 
                                    @CapellaID { eid = "b38c63bc-d82d-41b2-b815-a6de546029c6"; } 
                                    attribute :>> isControl = false; 
                                    attribute :>> isControlType = false; 
                                    attribute :>> kindOfNode = ObjectNodeKind::Unspecified; 
                                    attribute :>> ordering = ObjectNodeOrderingKind::FIFO; 
                                }  
                                ref :>> inputs =  ('FIP 1'); 
                                ref :>> outputs =  ('FOP 1'); 
                            }  
                            ref :>> ownedConstraints =  ('Preserve Modulation Fidelity'); 
                            ref :>> ownedFunctions =  ('Transmit Left Signal',
                            'Tranmit Right Signal'); 
                             
                        }  
                        action 'Provide Backup' : PhysicalFunction  { 
                            @CapellaID { eid = "38bec62b-2797-4912-b8cc-489c17428412"; } 
                            attribute :>> aggregationKind = AggregationKind::UNSET; 
                            attribute :>> isFinal = false; 
                            attribute :>> isAbstract = false; 
                            attribute :>> isDerived = false; 
                            attribute :>> isPartOfKey = false; 
                            attribute :>> isReadOnly = false; 
                            attribute :>> isStatic = false; 
                            attribute :>> kind = FunctionKind::FUNCTION; 
                            attribute :>> isMaxInclusive = false; 
                            attribute :>> isMinInclusive = false; 
                            attribute :>> isOrdered = false; 
                            attribute :>> isUnique = false; 
                            in port 'FIP 1' : FunctionInputPort  { 
                                @CapellaID { eid = "2b12b62c-3429-48d5-9d04-a388561c9bd2"; } 
                                attribute :>> isControl = false; 
                                attribute :>> isControlType = false; 
                                attribute :>> kindOfNode = ObjectNodeKind::Unspecified; 
                                attribute :>> ordering = ObjectNodeOrderingKind::FIFO; 
                            }  
                            out port 'FOP 1' : FunctionOutputPort  { 
                                @CapellaID { eid = "7bead90d-6e58-4a8f-b0e6-d612c19ff5ba"; } 
                                attribute :>> isControl = false; 
                                attribute :>> isControlType = false; 
                                attribute :>> kindOfNode = ObjectNodeKind::Unspecified; 
                                attribute :>> ordering = ObjectNodeOrderingKind::FIFO; 
                            }  
                            ref :>> inputs =  ('FIP 1'); 
                            ref :>> outputs =  ('FOP 1'); 
                        }  
                        action 'Receive Force' : PhysicalFunction  { 
                            @CapellaID { eid = "2e31d057-eabc-4d32-90e3-e559a52086ca"; } 
                            attribute :>> aggregationKind = AggregationKind::UNSET; 
                            attribute :>> isFinal = false; 
                            attribute :>> isAbstract = false; 
                            attribute :>> isDerived = false; 
                            attribute :>> isPartOfKey = false; 
                            attribute :>> isReadOnly = false; 
                            attribute :>> isStatic = false; 
                            attribute :>> kind = FunctionKind::FUNCTION; 
                            attribute :>> isMaxInclusive = false; 
                            attribute :>> isMinInclusive = false; 
                            attribute :>> isOrdered = false; 
                            attribute :>> isUnique = false; 
                            action 'Receive Front Force' : PhysicalFunction  { 
                                @CapellaID { eid = "8aee58e1-162f-4db1-9067-d4ea0e1d700c"; } 
                                attribute :>> aggregationKind = AggregationKind::UNSET; 
                                attribute :>> isFinal = false; 
                                attribute :>> isAbstract = false; 
                                attribute :>> isDerived = false; 
                                attribute :>> isPartOfKey = false; 
                                attribute :>> isReadOnly = false; 
                                attribute :>> isStatic = false; 
                                attribute :>> kind = FunctionKind::FUNCTION; 
                                attribute :>> isMaxInclusive = false; 
                                attribute :>> isMinInclusive = false; 
                                attribute :>> isOrdered = false; 
                                attribute :>> isUnique = false; 
                                in port 'FIP 1' : FunctionInputPort  { 
                                    @CapellaID { eid = "29cb704d-2330-4ad8-9173-bee20e4a0620"; } 
                                    attribute :>> isControl = false; 
                                    attribute :>> isControlType = false; 
                                    attribute :>> kindOfNode = ObjectNodeKind::Unspecified; 
                                    attribute :>> ordering = ObjectNodeOrderingKind::FIFO; 
                                     
                                }  
                                out port 'FOP 1' : FunctionOutputPort  { 
                                    @CapellaID { eid = "b65713d2-5a14-40c1-ba5b-a0139a6382d9"; } 
                                    attribute :>> isControl = false; 
                                    attribute :>> isControlType = false; 
                                    attribute :>> kindOfNode = ObjectNodeKind::Unspecified; 
                                    attribute :>> ordering = ObjectNodeOrderingKind::FIFO; 
                                     
                                }  
                                ref :>> inputs =  ('FIP 1'); 
                                ref :>> outputs =  ('FOP 1'); 
                            }  
                            action 'Receive Rear Force' : PhysicalFunction  { 
                                @CapellaID { eid = "6f379b8a-cc19-432a-9557-d9b478d426fe"; } 
                                attribute :>> aggregationKind = AggregationKind::UNSET; 
                                attribute :>> isFinal = false; 
                                attribute :>> isAbstract = false; 
                                attribute :>> isDerived = false; 
                                attribute :>> isPartOfKey = false; 
                                attribute :>> isReadOnly = false; 
                                attribute :>> isStatic = false; 
                                attribute :>> kind = FunctionKind::FUNCTION; 
                                attribute :>> isMaxInclusive = false; 
                                attribute :>> isMinInclusive = false; 
                                attribute :>> isOrdered = false; 
                                attribute :>> isUnique = false; 
                                in port 'FIP 1' : FunctionInputPort  { 
                                    @CapellaID { eid = "12534453-ea90-478f-8f23-6ed70ff7b033"; } 
                                    attribute :>> isControl = false; 
                                    attribute :>> isControlType = false; 
                                    attribute :>> kindOfNode = ObjectNodeKind::Unspecified; 
                                    attribute :>> ordering = ObjectNodeOrderingKind::FIFO; 
                                }  
                                out port 'FOP 1' : FunctionOutputPort  { 
                                    @CapellaID { eid = "af30746a-8964-47b9-91a9-a506b240e914"; } 
                                    attribute :>> isControl = false; 
                                    attribute :>> isControlType = false; 
                                    attribute :>> kindOfNode = ObjectNodeKind::Unspecified; 
                                    attribute :>> ordering = ObjectNodeOrderingKind::FIFO; 
                                }  
                                ref :>> inputs =  ('FIP 1'); 
                                ref :>> outputs =  ('FOP 1'); 
                            }  
                            ref :>> ownedFunctions =  ('Receive Front Force',
                            'Receive Rear Force'); 
                             
                        }  
                        action 'Receive Signal' : PhysicalFunction  { 
                            @CapellaID { eid = "2f854ba1-2a85-4140-9693-afcfaf174108"; } 
                            attribute :>> aggregationKind = AggregationKind::UNSET; 
                            attribute :>> isFinal = false; 
                            attribute :>> isAbstract = false; 
                            attribute :>> isDerived = false; 
                            attribute :>> isPartOfKey = false; 
                            attribute :>> isReadOnly = false; 
                            attribute :>> isStatic = false; 
                            attribute :>> kind = FunctionKind::FUNCTION; 
                            attribute :>> isMaxInclusive = false; 
                            attribute :>> isMinInclusive = false; 
                            attribute :>> isOrdered = false; 
                            attribute :>> isUnique = false; 
                            in port 'FIP 2' : FunctionInputPort  { 
                                @CapellaID { eid = "de105bf7-c4b6-4867-b1ab-d14e52bad269"; } 
                                attribute :>> isControl = false; 
                                attribute :>> isControlType = false; 
                                attribute :>> kindOfNode = ObjectNodeKind::Unspecified; 
                                attribute :>> ordering = ObjectNodeOrderingKind::FIFO; 
                            }  
                            action 'Receive Left Signal' : PhysicalFunction  { 
                                @CapellaID { eid = "292488ac-94ad-4191-af5a-cc0b665cfc91"; } 
                                attribute :>> aggregationKind = AggregationKind::UNSET; 
                                attribute :>> isFinal = false; 
                                attribute :>> isAbstract = false; 
                                attribute :>> isDerived = false; 
                                attribute :>> isPartOfKey = false; 
                                attribute :>> isReadOnly = false; 
                                attribute :>> isStatic = false; 
                                attribute :>> kind = FunctionKind::FUNCTION; 
                                attribute :>> isMaxInclusive = false; 
                                attribute :>> isMinInclusive = false; 
                                attribute :>> isOrdered = false; 
                                attribute :>> isUnique = false; 
                                in port 'FIP 1' : FunctionInputPort  { 
                                    @CapellaID { eid = "ae07d5de-69c3-4cfa-a2d3-1114a1d50c91"; } 
                                    attribute :>> isControl = false; 
                                    attribute :>> isControlType = false; 
                                    attribute :>> kindOfNode = ObjectNodeKind::Unspecified; 
                                    attribute :>> ordering = ObjectNodeOrderingKind::FIFO; 
                                     
                                }  
                                out port 'FOP 1' : FunctionOutputPort  { 
                                    @CapellaID { eid = "c3f603e3-139e-43a3-9127-a6c21289ba86"; } 
                                    attribute :>> isControl = false; 
                                    attribute :>> isControlType = false; 
                                    attribute :>> kindOfNode = ObjectNodeKind::Unspecified; 
                                    attribute :>> ordering = ObjectNodeOrderingKind::FIFO; 
                                     
                                }  
                                ref :>> inputs =  ('FIP 1'); 
                                ref :>> outputs =  ('FOP 1'); 
                            }  
                            action 'Receive Right Signal' : PhysicalFunction  { 
                                @CapellaID { eid = "2cb983d5-7a9d-4aae-8cd9-a7e3474f1f39"; } 
                                attribute :>> aggregationKind = AggregationKind::UNSET; 
                                attribute :>> isFinal = false; 
                                attribute :>> isAbstract = false; 
                                attribute :>> isDerived = false; 
                                attribute :>> isPartOfKey = false; 
                                attribute :>> isReadOnly = false; 
                                attribute :>> isStatic = false; 
                                attribute :>> kind = FunctionKind::FUNCTION; 
                                attribute :>> isMaxInclusive = false; 
                                attribute :>> isMinInclusive = false; 
                                attribute :>> isOrdered = false; 
                                attribute :>> isUnique = false; 
                                in port 'FIP 1' : FunctionInputPort  { 
                                    @CapellaID { eid = "7de7edec-a5a1-4155-a016-ba3b597eb297"; } 
                                    attribute :>> isControl = false; 
                                    attribute :>> isControlType = false; 
                                    attribute :>> kindOfNode = ObjectNodeKind::Unspecified; 
                                    attribute :>> ordering = ObjectNodeOrderingKind::FIFO; 
                                }  
                                out port 'FOP 1' : FunctionOutputPort  { 
                                    @CapellaID { eid = "3f7ff2a9-1b26-4b8a-bc44-166c365e9174"; } 
                                    attribute :>> isControl = false; 
                                    attribute :>> isControlType = false; 
                                    attribute :>> kindOfNode = ObjectNodeKind::Unspecified; 
                                    attribute :>> ordering = ObjectNodeOrderingKind::FIFO; 
                                }  
                                ref :>> inputs =  ('FIP 1'); 
                                ref :>> outputs =  ('FOP 1'); 
                            }  
                            ref :>> inputs =  ('FIP 2'); 
                            ref :>> ownedFunctions =  ('Receive Left Signal',
                            'Receive Right Signal'); 
                             
                        }  
                        action 'Position Pads' : PhysicalFunction  { 
                            @CapellaID { eid = "7e803f3a-f695-44ba-869b-0b5e8e29efd6"; } 
                            attribute :>> aggregationKind = AggregationKind::UNSET; 
                            attribute :>> isFinal = false; 
                            attribute :>> isAbstract = false; 
                            attribute :>> isDerived = false; 
                            attribute :>> isPartOfKey = false; 
                            attribute :>> isReadOnly = false; 
                            attribute :>> isStatic = false; 
                            attribute :>> kind = FunctionKind::FUNCTION; 
                            attribute :>> isMaxInclusive = false; 
                            attribute :>> isMinInclusive = false; 
                            attribute :>> isOrdered = false; 
                            attribute :>> isUnique = false; 
                            action 'Position Front Right Pad' : PhysicalFunction  { 
                                @CapellaID { eid = "2bd342ca-10ab-4dd3-ad5a-ee018b452de8"; } 
                                attribute :>> aggregationKind = AggregationKind::UNSET; 
                                attribute :>> isFinal = false; 
                                attribute :>> isAbstract = false; 
                                attribute :>> isDerived = false; 
                                attribute :>> isPartOfKey = false; 
                                attribute :>> isReadOnly = false; 
                                attribute :>> isStatic = false; 
                                attribute :>> kind = FunctionKind::FUNCTION; 
                                attribute :>> isMaxInclusive = false; 
                                attribute :>> isMinInclusive = false; 
                                attribute :>> isOrdered = false; 
                                attribute :>> isUnique = false; 
                                in port 'FIP 1' : FunctionInputPort  { 
                                    @CapellaID { eid = "ebf712c7-29aa-4567-a0c0-49a086b4e66e"; } 
                                    attribute :>> isControl = false; 
                                    attribute :>> isControlType = false; 
                                    attribute :>> kindOfNode = ObjectNodeKind::Unspecified; 
                                    attribute :>> ordering = ObjectNodeOrderingKind::FIFO; 
                                     
                                }  
                                out port 'FOP 1' : FunctionOutputPort  { 
                                    @CapellaID { eid = "20a5f6af-3691-43e5-a7a4-64fa9d8e0a06"; } 
                                    attribute :>> isControl = false; 
                                    attribute :>> isControlType = false; 
                                    attribute :>> kindOfNode = ObjectNodeKind::Unspecified; 
                                    attribute :>> ordering = ObjectNodeOrderingKind::FIFO; 
                                     
                                }  
                                ref :>> inputs =  ('FIP 1'); 
                                ref :>> outputs =  ('FOP 1'); 
                            }  
                            action 'Posion Front Left Pad' : PhysicalFunction  { 
                                @CapellaID { eid = "ab82b2d7-649d-45e8-9834-bba3930a6fc2"; } 
                                attribute :>> aggregationKind = AggregationKind::UNSET; 
                                attribute :>> isFinal = false; 
                                attribute :>> isAbstract = false; 
                                attribute :>> isDerived = false; 
                                attribute :>> isPartOfKey = false; 
                                attribute :>> isReadOnly = false; 
                                attribute :>> isStatic = false; 
                                attribute :>> kind = FunctionKind::FUNCTION; 
                                attribute :>> isMaxInclusive = false; 
                                attribute :>> isMinInclusive = false; 
                                attribute :>> isOrdered = false; 
                                attribute :>> isUnique = false; 
                                in port 'FIP 1' : FunctionInputPort  { 
                                    @CapellaID { eid = "4eb67ffd-24b7-4710-92aa-e5673a9342b1"; } 
                                    attribute :>> isControl = false; 
                                    attribute :>> isControlType = false; 
                                    attribute :>> kindOfNode = ObjectNodeKind::Unspecified; 
                                    attribute :>> ordering = ObjectNodeOrderingKind::FIFO; 
                                }  
                                out port 'FOP 1' : FunctionOutputPort  { 
                                    @CapellaID { eid = "2694f363-7d7c-417b-8f17-534ace11b8f0"; } 
                                    attribute :>> isControl = false; 
                                    attribute :>> isControlType = false; 
                                    attribute :>> kindOfNode = ObjectNodeKind::Unspecified; 
                                    attribute :>> ordering = ObjectNodeOrderingKind::FIFO; 
                                }  
                                ref :>> inputs =  ('FIP 1'); 
                                ref :>> outputs =  ('FOP 1'); 
                            }  
                            action 'Position Rear Left Pad' : PhysicalFunction  { 
                                @CapellaID { eid = "96d7e9fa-6d66-4b18-800b-f474f585dd69"; } 
                                attribute :>> aggregationKind = AggregationKind::UNSET; 
                                attribute :>> isFinal = false; 
                                attribute :>> isAbstract = false; 
                                attribute :>> isDerived = false; 
                                attribute :>> isPartOfKey = false; 
                                attribute :>> isReadOnly = false; 
                                attribute :>> isStatic = false; 
                                attribute :>> kind = FunctionKind::FUNCTION; 
                                attribute :>> isMaxInclusive = false; 
                                attribute :>> isMinInclusive = false; 
                                attribute :>> isOrdered = false; 
                                attribute :>> isUnique = false; 
                                in port 'FIP 1' : FunctionInputPort  { 
                                    @CapellaID { eid = "f2c9f565-e23c-4695-8166-034b3eafc7f9"; } 
                                    attribute :>> isControl = false; 
                                    attribute :>> isControlType = false; 
                                    attribute :>> kindOfNode = ObjectNodeKind::Unspecified; 
                                    attribute :>> ordering = ObjectNodeOrderingKind::FIFO; 
                                }  
                                out port 'FOP 1' : FunctionOutputPort  { 
                                    @CapellaID { eid = "224d925d-262e-4383-92af-1264ba8c1a7f"; } 
                                    attribute :>> isControl = false; 
                                    attribute :>> isControlType = false; 
                                    attribute :>> kindOfNode = ObjectNodeKind::Unspecified; 
                                    attribute :>> ordering = ObjectNodeOrderingKind::FIFO; 
                                }  
                                ref :>> inputs =  ('FIP 1'); 
                                ref :>> outputs =  ('FOP 1'); 
                            }  
                            action 'Position Rear Left Pad' : PhysicalFunction  { 
                                @CapellaID { eid = "3264f5e4-7b0b-4fe1-8e7f-66f304441a84"; } 
                                attribute :>> aggregationKind = AggregationKind::UNSET; 
                                attribute :>> isFinal = false; 
                                attribute :>> isAbstract = false; 
                                attribute :>> isDerived = false; 
                                attribute :>> isPartOfKey = false; 
                                attribute :>> isReadOnly = false; 
                                attribute :>> isStatic = false; 
                                attribute :>> kind = FunctionKind::FUNCTION; 
                                attribute :>> isMaxInclusive = false; 
                                attribute :>> isMinInclusive = false; 
                                attribute :>> isOrdered = false; 
                                attribute :>> isUnique = false; 
                                in port 'FIP 1' : FunctionInputPort  { 
                                    @CapellaID { eid = "ed1d707c-3be4-41bb-b5d5-a4eab82a2de8"; } 
                                    attribute :>> isControl = false; 
                                    attribute :>> isControlType = false; 
                                    attribute :>> kindOfNode = ObjectNodeKind::Unspecified; 
                                    attribute :>> ordering = ObjectNodeOrderingKind::FIFO; 
                                }  
                                out port 'FOP 1' : FunctionOutputPort  { 
                                    @CapellaID { eid = "cfca5cd8-eabe-4eee-a577-4c5ec4affdc7"; } 
                                    attribute :>> isControl = false; 
                                    attribute :>> isControlType = false; 
                                    attribute :>> kindOfNode = ObjectNodeKind::Unspecified; 
                                    attribute :>> ordering = ObjectNodeOrderingKind::FIFO; 
                                }  
                                ref :>> inputs =  ('FIP 1'); 
                                ref :>> outputs =  ('FOP 1'); 
                            }  
                            out port 'FOP 2' : FunctionOutputPort  { 
                                @CapellaID { eid = "526f197d-e43d-4016-a0f9-8f28becea465"; } 
                                attribute :>> isControl = false; 
                                attribute :>> isControlType = false; 
                                attribute :>> kindOfNode = ObjectNodeKind::Unspecified; 
                                attribute :>> ordering = ObjectNodeOrderingKind::FIFO; 
                                 
                            }  
                            ref :>> ownedFunctions =  ('Position Front Right Pad',
                            'Posion Front Left Pad',
                            'Position Rear Left Pad',
                            'Position Rear Left Pad'); 
                            ref :>> outputs =  ('FOP 2'); 
                             
                        }  
                        action 'Amplify Force' : PhysicalFunction  { 
                            doc /*
                            <p>Mechanical Lever Amplifies Force</p>

                            */ 
                            @CapellaID { eid = "a386d85d-9080-41fc-9bdb-8fe270975aba"; } 
                            attribute :>> aggregationKind = AggregationKind::UNSET; 
                            attribute :>> isFinal = false; 
                            attribute :>> isAbstract = false; 
                            attribute :>> isDerived = false; 
                            attribute :>> isPartOfKey = false; 
                            attribute :>> isReadOnly = false; 
                            attribute :>> isStatic = false; 
                            attribute :>> kind = FunctionKind::FUNCTION; 
                            attribute :>> isMaxInclusive = false; 
                            attribute :>> isMinInclusive = false; 
                            attribute :>> isOrdered = false; 
                            attribute :>> isUnique = false; 
                            action 'Amplify Front Force' : PhysicalFunction  { 
                                @CapellaID { eid = "6856a457-fbb2-4314-9017-f07dfc5e5085"; } 
                                attribute :>> aggregationKind = AggregationKind::UNSET; 
                                attribute :>> isFinal = false; 
                                attribute :>> isAbstract = false; 
                                attribute :>> isDerived = false; 
                                attribute :>> isPartOfKey = false; 
                                attribute :>> isReadOnly = false; 
                                attribute :>> isStatic = false; 
                                attribute :>> kind = FunctionKind::FUNCTION; 
                                attribute :>> isMaxInclusive = false; 
                                attribute :>> isMinInclusive = false; 
                                attribute :>> isOrdered = false; 
                                attribute :>> isUnique = false; 
                                in port 'FIP 1' : FunctionInputPort  { 
                                    @CapellaID { eid = "e8d3323f-4a73-451e-bbfc-5098927077d9"; } 
                                    attribute :>> isControl = false; 
                                    attribute :>> isControlType = false; 
                                    attribute :>> kindOfNode = ObjectNodeKind::Unspecified; 
                                    attribute :>> ordering = ObjectNodeOrderingKind::FIFO; 
                                     
                                }  
                                out port 'FOP 1' : FunctionOutputPort  { 
                                    @CapellaID { eid = "8f6615f4-2019-4144-899f-efd6166aee86"; } 
                                    attribute :>> isControl = false; 
                                    attribute :>> isControlType = false; 
                                    attribute :>> kindOfNode = ObjectNodeKind::Unspecified; 
                                    attribute :>> ordering = ObjectNodeOrderingKind::FIFO; 
                                     
                                }  
                                ref :>> inputs =  ('FIP 1'); 
                                ref :>> outputs =  ('FOP 1'); 
                            }  
                            action 'Amplify Rear Force' : PhysicalFunction  { 
                                @CapellaID { eid = "73e86962-6350-43e8-a27c-05ff8a693a5c"; } 
                                attribute :>> aggregationKind = AggregationKind::UNSET; 
                                attribute :>> isFinal = false; 
                                attribute :>> isAbstract = false; 
                                attribute :>> isDerived = false; 
                                attribute :>> isPartOfKey = false; 
                                attribute :>> isReadOnly = false; 
                                attribute :>> isStatic = false; 
                                attribute :>> kind = FunctionKind::FUNCTION; 
                                attribute :>> isMaxInclusive = false; 
                                attribute :>> isMinInclusive = false; 
                                attribute :>> isOrdered = false; 
                                attribute :>> isUnique = false; 
                                in port 'FIP 1' : FunctionInputPort  { 
                                    @CapellaID { eid = "11de49b1-ce93-4d56-a551-7e251d7fe3c6"; } 
                                    attribute :>> isControl = false; 
                                    attribute :>> isControlType = false; 
                                    attribute :>> kindOfNode = ObjectNodeKind::Unspecified; 
                                    attribute :>> ordering = ObjectNodeOrderingKind::FIFO; 
                                }  
                                out port 'FOP 1' : FunctionOutputPort  { 
                                    @CapellaID { eid = "0e0e0881-9a5c-4c88-bc1c-d10b3aa0dea4"; } 
                                    attribute :>> isControl = false; 
                                    attribute :>> isControlType = false; 
                                    attribute :>> kindOfNode = ObjectNodeKind::Unspecified; 
                                    attribute :>> ordering = ObjectNodeOrderingKind::FIFO; 
                                }  
                                ref :>> inputs =  ('FIP 1'); 
                                ref :>> outputs =  ('FOP 1'); 
                            }  
                            ref :>> ownedFunctions =  ('Amplify Front Force',
                            'Amplify Rear Force'); 
                             
                        }  
                        action 'Amplify Force' : PhysicalFunction  { 
                            doc /*
                            <p>hydraulic pressure pushes pistons.</p>

                            */ 
                            @CapellaID { eid = "15a26bd9-4b88-4e19-bf9c-652befce6e86"; } 
                            attribute :>> aggregationKind = AggregationKind::UNSET; 
                            attribute :>> isFinal = false; 
                            attribute :>> isAbstract = false; 
                            attribute :>> isDerived = false; 
                            attribute :>> isPartOfKey = false; 
                            attribute :>> isReadOnly = false; 
                            attribute :>> isStatic = false; 
                            attribute :>> kind = FunctionKind::FUNCTION; 
                            attribute :>> isMaxInclusive = false; 
                            attribute :>> isMinInclusive = false; 
                            attribute :>> isOrdered = false; 
                            attribute :>> isUnique = false; 
                            action 'Amplify Left Signal' : PhysicalFunction  { 
                                @CapellaID { eid = "514d2302-58de-4ff4-a9ad-476fc05ec55c"; } 
                                attribute :>> aggregationKind = AggregationKind::UNSET; 
                                attribute :>> isFinal = false; 
                                attribute :>> isAbstract = false; 
                                attribute :>> isDerived = false; 
                                attribute :>> isPartOfKey = false; 
                                attribute :>> isReadOnly = false; 
                                attribute :>> isStatic = false; 
                                attribute :>> kind = FunctionKind::FUNCTION; 
                                attribute :>> isMaxInclusive = false; 
                                attribute :>> isMinInclusive = false; 
                                attribute :>> isOrdered = false; 
                                attribute :>> isUnique = false; 
                                in port 'FIP 1' : FunctionInputPort  { 
                                    @CapellaID { eid = "ce8c379f-ade7-43e4-bd4d-9beccafa6214"; } 
                                    attribute :>> isControl = false; 
                                    attribute :>> isControlType = false; 
                                    attribute :>> kindOfNode = ObjectNodeKind::Unspecified; 
                                    attribute :>> ordering = ObjectNodeOrderingKind::FIFO; 
                                     
                                }  
                                out port 'FOP 1' : FunctionOutputPort  { 
                                    @CapellaID { eid = "49dc97f5-56c5-4e1f-9d4f-46bf6ec0f401"; } 
                                    attribute :>> isControl = false; 
                                    attribute :>> isControlType = false; 
                                    attribute :>> kindOfNode = ObjectNodeKind::Unspecified; 
                                    attribute :>> ordering = ObjectNodeOrderingKind::FIFO; 
                                     
                                }  
                                ref :>> inputs =  ('FIP 1'); 
                                ref :>> outputs =  ('FOP 1'); 
                            }  
                            action 'Recieve Right Signal' : PhysicalFunction  { 
                                @CapellaID { eid = "679f258b-fd85-4609-902d-ed7673fba46c"; } 
                                attribute :>> aggregationKind = AggregationKind::UNSET; 
                                attribute :>> isFinal = false; 
                                attribute :>> isAbstract = false; 
                                attribute :>> isDerived = false; 
                                attribute :>> isPartOfKey = false; 
                                attribute :>> isReadOnly = false; 
                                attribute :>> isStatic = false; 
                                attribute :>> kind = FunctionKind::FUNCTION; 
                                attribute :>> isMaxInclusive = false; 
                                attribute :>> isMinInclusive = false; 
                                attribute :>> isOrdered = false; 
                                attribute :>> isUnique = false; 
                                in port 'FIP 1' : FunctionInputPort  { 
                                    @CapellaID { eid = "46072d16-71f0-4eec-a1bf-1906bddb20e1"; } 
                                    attribute :>> isControl = false; 
                                    attribute :>> isControlType = false; 
                                    attribute :>> kindOfNode = ObjectNodeKind::Unspecified; 
                                    attribute :>> ordering = ObjectNodeOrderingKind::FIFO; 
                                }  
                                out port 'FOP 1' : FunctionOutputPort  { 
                                    @CapellaID { eid = "77574dc4-4532-4fa5-94de-ca6e7583e4dd"; } 
                                    attribute :>> isControl = false; 
                                    attribute :>> isControlType = false; 
                                    attribute :>> kindOfNode = ObjectNodeKind::Unspecified; 
                                    attribute :>> ordering = ObjectNodeOrderingKind::FIFO; 
                                }  
                                out port 'FOP 2' : FunctionOutputPort  { 
                                    @CapellaID { eid = "6d87a8a5-e0e0-4fd1-a187-82db20c67d40"; } 
                                    attribute :>> isControl = false; 
                                    attribute :>> isControlType = false; 
                                    attribute :>> kindOfNode = ObjectNodeKind::Unspecified; 
                                    attribute :>> ordering = ObjectNodeOrderingKind::FIFO; 
                                }  
                                ref :>> inputs =  ('FIP 1'); 
                                ref :>> outputs =  ('FOP 1',
                                'FOP 2'); 
                            }  
                            out port 'FOP 2' : FunctionOutputPort  { 
                                @CapellaID { eid = "e0265719-33fd-48ba-ad70-d19a81e315d9"; } 
                                attribute :>> isControl = false; 
                                attribute :>> isControlType = false; 
                                attribute :>> kindOfNode = ObjectNodeKind::Unspecified; 
                                attribute :>> ordering = ObjectNodeOrderingKind::FIFO; 
                                 
                            }  
                            ref :>> ownedFunctions =  ('Amplify Left Signal',
                            'Recieve Right Signal'); 
                            ref :>> outputs =  ('FOP 2'); 
                             
                        }  
                        action 'Position Pads' : PhysicalFunction  { 
                            @CapellaID { eid = "f2a1d9a5-d112-4084-be80-b0810f66dd39"; } 
                            attribute :>> aggregationKind = AggregationKind::UNSET; 
                            attribute :>> isFinal = false; 
                            attribute :>> isAbstract = false; 
                            attribute :>> isDerived = false; 
                            attribute :>> isPartOfKey = false; 
                            attribute :>> isReadOnly = false; 
                            attribute :>> isStatic = false; 
                            attribute :>> kind = FunctionKind::FUNCTION; 
                            attribute :>> isMaxInclusive = false; 
                            attribute :>> isMinInclusive = false; 
                            attribute :>> isOrdered = false; 
                            attribute :>> isUnique = false; 
                            dependency '2e8df48c-f96c-4c9a-8317-5f5ccbd11231'
                                from 'Return Pads After Force Removed.'
                                to  'Logical Architecture'::'Logical Functions'::'Root Logical Function'::'Provide Stopping'::'Position Pads'::'Return Pads After Force Removed.' { 
                                @TransfoLink { 
                                    @CapellaID { eid = "2e8df48c-f96c-4c9a-8317-5f5ccbd11231"; } 
                                }  
                            }  
                            constraint 'Return Pads After Force Removed.' : CapellaConstraint { 
                                language "capella:linkedText" /*  */
                                @CapellaID { eid = "3f294fd6-363e-4794-ae6e-35199142aa84"; }
                                
                                ref :>> constrainedElements =  ('Bike BrakeSystem Library Library'::'Bike BrakeSystem Library'::'Physical Architecture'::'Physical Functions'::'Root Physical Function'.'Provide Stopping'.'Position Pads',
                                'Bike BrakeSystem Library Library'::'Bike BrakeSystem Library'::'Physical Architecture'::'Physical Functions'::'Root Physical Function'.'Provide Stopping'.'Position Pads');
                            } 
                            action 'Position Front Right Pad' : PhysicalFunction  { 
                                @CapellaID { eid = "e292bdcd-a9f8-4b4f-ade6-de9389081a80"; } 
                                attribute :>> aggregationKind = AggregationKind::UNSET; 
                                attribute :>> isFinal = false; 
                                attribute :>> isAbstract = false; 
                                attribute :>> isDerived = false; 
                                attribute :>> isPartOfKey = false; 
                                attribute :>> isReadOnly = false; 
                                attribute :>> isStatic = false; 
                                attribute :>> kind = FunctionKind::FUNCTION; 
                                attribute :>> isMaxInclusive = false; 
                                attribute :>> isMinInclusive = false; 
                                attribute :>> isOrdered = false; 
                                attribute :>> isUnique = false; 
                                in port 'FIP 1' : FunctionInputPort  { 
                                    @CapellaID { eid = "8c05dd94-47b4-4bf3-8b5f-cacc724771d8"; } 
                                    attribute :>> isControl = false; 
                                    attribute :>> isControlType = false; 
                                    attribute :>> kindOfNode = ObjectNodeKind::Unspecified; 
                                    attribute :>> ordering = ObjectNodeOrderingKind::FIFO; 
                                     
                                }  
                                out port 'FOP 1' : FunctionOutputPort  { 
                                    @CapellaID { eid = "7f9cdadf-8f14-4f40-b2d0-53eba79378de"; } 
                                    attribute :>> isControl = false; 
                                    attribute :>> isControlType = false; 
                                    attribute :>> kindOfNode = ObjectNodeKind::Unspecified; 
                                    attribute :>> ordering = ObjectNodeOrderingKind::FIFO; 
                                     
                                }  
                                ref :>> inputs =  ('FIP 1'); 
                                ref :>> outputs =  ('FOP 1'); 
                            }  
                            action 'Position Front Left pad' : PhysicalFunction  { 
                                @CapellaID { eid = "fc776178-6121-4cba-8fea-e96955dd2188"; } 
                                attribute :>> aggregationKind = AggregationKind::UNSET; 
                                attribute :>> isFinal = false; 
                                attribute :>> isAbstract = false; 
                                attribute :>> isDerived = false; 
                                attribute :>> isPartOfKey = false; 
                                attribute :>> isReadOnly = false; 
                                attribute :>> isStatic = false; 
                                attribute :>> kind = FunctionKind::FUNCTION; 
                                attribute :>> isMaxInclusive = false; 
                                attribute :>> isMinInclusive = false; 
                                attribute :>> isOrdered = false; 
                                attribute :>> isUnique = false; 
                                in port 'FIP 1' : FunctionInputPort  { 
                                    @CapellaID { eid = "d7e4da03-1d03-419f-8303-0d004a964d21"; } 
                                    attribute :>> isControl = false; 
                                    attribute :>> isControlType = false; 
                                    attribute :>> kindOfNode = ObjectNodeKind::Unspecified; 
                                    attribute :>> ordering = ObjectNodeOrderingKind::FIFO; 
                                }  
                                out port 'FOP 1' : FunctionOutputPort  { 
                                    @CapellaID { eid = "b828f54a-0cb9-4ea1-bc4f-aad229647368"; } 
                                    attribute :>> isControl = false; 
                                    attribute :>> isControlType = false; 
                                    attribute :>> kindOfNode = ObjectNodeKind::Unspecified; 
                                    attribute :>> ordering = ObjectNodeOrderingKind::FIFO; 
                                }  
                                ref :>> inputs =  ('FIP 1'); 
                                ref :>> outputs =  ('FOP 1'); 
                            }  
                            action 'Position Rear Right Pad ' : PhysicalFunction  { 
                                @CapellaID { eid = "d57e988a-f505-4168-b1ae-0d6e56c7fdf1"; } 
                                attribute :>> aggregationKind = AggregationKind::UNSET; 
                                attribute :>> isFinal = false; 
                                attribute :>> isAbstract = false; 
                                attribute :>> isDerived = false; 
                                attribute :>> isPartOfKey = false; 
                                attribute :>> isReadOnly = false; 
                                attribute :>> isStatic = false; 
                                attribute :>> kind = FunctionKind::FUNCTION; 
                                attribute :>> isMaxInclusive = false; 
                                attribute :>> isMinInclusive = false; 
                                attribute :>> isOrdered = false; 
                                attribute :>> isUnique = false; 
                                in port 'FIP 1' : FunctionInputPort  { 
                                    @CapellaID { eid = "858dc038-d00b-49a9-b0fb-e894be8d3e54"; } 
                                    attribute :>> isControl = false; 
                                    attribute :>> isControlType = false; 
                                    attribute :>> kindOfNode = ObjectNodeKind::Unspecified; 
                                    attribute :>> ordering = ObjectNodeOrderingKind::FIFO; 
                                }  
                                out port 'FOP 1' : FunctionOutputPort  { 
                                    @CapellaID { eid = "bb4831e3-c61e-4036-9dbc-130c6b21df8a"; } 
                                    attribute :>> isControl = false; 
                                    attribute :>> isControlType = false; 
                                    attribute :>> kindOfNode = ObjectNodeKind::Unspecified; 
                                    attribute :>> ordering = ObjectNodeOrderingKind::FIFO; 
                                }  
                                ref :>> inputs =  ('FIP 1'); 
                                ref :>> outputs =  ('FOP 1'); 
                            }  
                            action 'Position Rear Left Pad' : PhysicalFunction  { 
                                @CapellaID { eid = "546c223e-dd5c-48d9-ae53-fe788a13ebd1"; } 
                                attribute :>> aggregationKind = AggregationKind::UNSET; 
                                attribute :>> isFinal = false; 
                                attribute :>> isAbstract = false; 
                                attribute :>> isDerived = false; 
                                attribute :>> isPartOfKey = false; 
                                attribute :>> isReadOnly = false; 
                                attribute :>> isStatic = false; 
                                attribute :>> kind = FunctionKind::FUNCTION; 
                                attribute :>> isMaxInclusive = false; 
                                attribute :>> isMinInclusive = false; 
                                attribute :>> isOrdered = false; 
                                attribute :>> isUnique = false; 
                                in port 'FIP 1' : FunctionInputPort  { 
                                    @CapellaID { eid = "2ef3b8ec-be9f-42f0-adc4-30bd7d93e389"; } 
                                    attribute :>> isControl = false; 
                                    attribute :>> isControlType = false; 
                                    attribute :>> kindOfNode = ObjectNodeKind::Unspecified; 
                                    attribute :>> ordering = ObjectNodeOrderingKind::FIFO; 
                                }  
                                out port 'FOP 1' : FunctionOutputPort  { 
                                    @CapellaID { eid = "940c3fd4-7a36-459b-b403-5dece15e4756"; } 
                                    attribute :>> isControl = false; 
                                    attribute :>> isControlType = false; 
                                    attribute :>> kindOfNode = ObjectNodeKind::Unspecified; 
                                    attribute :>> ordering = ObjectNodeOrderingKind::FIFO; 
                                }  
                                ref :>> inputs =  ('FIP 1'); 
                                ref :>> outputs =  ('FOP 1'); 
                            }  
                            ref :>> ownedConstraints =  ('Return Pads After Force Removed.'); 
                            ref :>> ownedFunctions =  ('Position Front Right Pad',
                            'Position Front Left pad',
                            'Position Rear Right Pad ',
                            'Position Rear Left Pad'); 
                             
                        }  
                        action 'Friction to Rotors' : PhysicalFunction  { 
                            @CapellaID { eid = "d130a4c5-d0d7-4169-89c2-b8f0a769fe8f"; } 
                            attribute :>> aggregationKind = AggregationKind::UNSET; 
                            attribute :>> isFinal = false; 
                            attribute :>> isAbstract = false; 
                            attribute :>> isDerived = false; 
                            attribute :>> isPartOfKey = false; 
                            attribute :>> isReadOnly = false; 
                            attribute :>> isStatic = false; 
                            attribute :>> kind = FunctionKind::FUNCTION; 
                            attribute :>> isMaxInclusive = false; 
                            attribute :>> isMinInclusive = false; 
                            attribute :>> isOrdered = false; 
                            attribute :>> isUnique = false; 
                            action 'Convert Friction Force to Stopping Torque' : PhysicalFunction  { 
                                doc /*
                                <p>The pads grip the rotor and create friction.</p>

                                */ 
                                @CapellaID { eid = "fef3ee00-124e-4f06-a9d2-45bca3221c43"; } 
                                attribute :>> aggregationKind = AggregationKind::UNSET; 
                                attribute :>> isFinal = false; 
                                attribute :>> isAbstract = false; 
                                attribute :>> isDerived = false; 
                                attribute :>> isPartOfKey = false; 
                                attribute :>> isReadOnly = false; 
                                attribute :>> isStatic = false; 
                                attribute :>> kind = FunctionKind::FUNCTION; 
                                attribute :>> isMaxInclusive = false; 
                                attribute :>> isMinInclusive = false; 
                                attribute :>> isOrdered = false; 
                                attribute :>> isUnique = false; 
                                in port 'FIP 1' : FunctionInputPort  { 
                                    @CapellaID { eid = "d0c7bf8f-aad3-4604-8629-95de25636876"; } 
                                    attribute :>> isControl = false; 
                                    attribute :>> isControlType = false; 
                                    attribute :>> kindOfNode = ObjectNodeKind::Unspecified; 
                                    attribute :>> ordering = ObjectNodeOrderingKind::FIFO; 
                                     
                                }  
                                in port 'FIP 2' : FunctionInputPort  { 
                                    @CapellaID { eid = "40478813-737e-495f-841e-db1b01561faf"; } 
                                    attribute :>> isControl = false; 
                                    attribute :>> isControlType = false; 
                                    attribute :>> kindOfNode = ObjectNodeKind::Unspecified; 
                                    attribute :>> ordering = ObjectNodeOrderingKind::FIFO; 
                                }  
                                out port 'FOP 1' : FunctionOutputPort  { 
                                    @CapellaID { eid = "e4cbe58f-d69f-4cf2-81f8-d75dded60b9a"; } 
                                    attribute :>> isControl = false; 
                                    attribute :>> isControlType = false; 
                                    attribute :>> kindOfNode = ObjectNodeKind::Unspecified; 
                                    attribute :>> ordering = ObjectNodeOrderingKind::FIFO; 
                                     
                                }  
                                ref :>> inputs =  ('FIP 1',
                                'FIP 2'); 
                                ref :>> outputs =  ('FOP 1'); 
                            }  
                            action 'Convert Friction Force to Stopping Torque' : PhysicalFunction  { 
                                doc /*
                                <p>The pads grip the rotor and create friction.</p>

                                */ 
                                @CapellaID { eid = "a6be2041-e0b3-458a-964f-27170439a1ad"; } 
                                attribute :>> aggregationKind = AggregationKind::UNSET; 
                                attribute :>> isFinal = false; 
                                attribute :>> isAbstract = false; 
                                attribute :>> isDerived = false; 
                                attribute :>> isPartOfKey = false; 
                                attribute :>> isReadOnly = false; 
                                attribute :>> isStatic = false; 
                                attribute :>> kind = FunctionKind::FUNCTION; 
                                attribute :>> isMaxInclusive = false; 
                                attribute :>> isMinInclusive = false; 
                                attribute :>> isOrdered = false; 
                                attribute :>> isUnique = false; 
                                in port 'FIP 1' : FunctionInputPort  { 
                                    @CapellaID { eid = "882723bc-442d-4bed-9a8a-8bd5b8040f9f"; } 
                                    attribute :>> isControl = false; 
                                    attribute :>> isControlType = false; 
                                    attribute :>> kindOfNode = ObjectNodeKind::Unspecified; 
                                    attribute :>> ordering = ObjectNodeOrderingKind::FIFO; 
                                }  
                                in port 'FIP 1' : FunctionInputPort  { 
                                    @CapellaID { eid = "07c73528-71e8-45be-8a89-2b912e407e9f"; } 
                                    attribute :>> isControl = false; 
                                    attribute :>> isControlType = false; 
                                    attribute :>> kindOfNode = ObjectNodeKind::Unspecified; 
                                    attribute :>> ordering = ObjectNodeOrderingKind::FIFO; 
                                }  
                                out port 'FOP 1' : FunctionOutputPort  { 
                                    @CapellaID { eid = "4ea92ee8-53e8-49b8-9109-3298b957e126"; } 
                                    attribute :>> isControl = false; 
                                    attribute :>> isControlType = false; 
                                    attribute :>> kindOfNode = ObjectNodeKind::Unspecified; 
                                    attribute :>> ordering = ObjectNodeOrderingKind::FIFO; 
                                }  
                                ref :>> inputs =  ('FIP 1',
                                'FIP 1'); 
                                ref :>> outputs =  ('FOP 1'); 
                            }  
                            ref :>> ownedFunctions =  ('Convert Friction Force to Stopping Torque',
                            'Convert Friction Force to Stopping Torque'); 
                             
                        }  
                        action 'Apply Friction to Rotors' : PhysicalFunction  { 
                            @CapellaID { eid = "5ccb9885-0767-4bdb-a4e9-379aaca9c259"; } 
                            attribute :>> aggregationKind = AggregationKind::UNSET; 
                            attribute :>> isFinal = false; 
                            attribute :>> isAbstract = false; 
                            attribute :>> isDerived = false; 
                            attribute :>> isPartOfKey = false; 
                            attribute :>> isReadOnly = false; 
                            attribute :>> isStatic = false; 
                            attribute :>> kind = FunctionKind::FUNCTION; 
                            attribute :>> isMaxInclusive = false; 
                            attribute :>> isMinInclusive = false; 
                            attribute :>> isOrdered = false; 
                            attribute :>> isUnique = false; 
                            action 'Convert Friction Force to Stopping Torque' : PhysicalFunction  { 
                                doc /*
                                <p>The pads grip the rotor and create friction.</p>

                                */ 
                                @CapellaID { eid = "7b48e787-235e-41c2-b3ad-dc69d998fbee"; } 
                                attribute :>> aggregationKind = AggregationKind::UNSET; 
                                attribute :>> isFinal = false; 
                                attribute :>> isAbstract = false; 
                                attribute :>> isDerived = false; 
                                attribute :>> isPartOfKey = false; 
                                attribute :>> isReadOnly = false; 
                                attribute :>> isStatic = false; 
                                attribute :>> kind = FunctionKind::FUNCTION; 
                                attribute :>> isMaxInclusive = false; 
                                attribute :>> isMinInclusive = false; 
                                attribute :>> isOrdered = false; 
                                attribute :>> isUnique = false; 
                                in port 'FIP 1' : FunctionInputPort  { 
                                    @CapellaID { eid = "68d315b6-1b23-432a-b60f-284faac4f3a2"; } 
                                    attribute :>> isControl = false; 
                                    attribute :>> isControlType = false; 
                                    attribute :>> kindOfNode = ObjectNodeKind::Unspecified; 
                                    attribute :>> ordering = ObjectNodeOrderingKind::FIFO; 
                                     
                                }  
                                in port 'FIP 2' : FunctionInputPort  { 
                                    @CapellaID { eid = "d8adf712-4b4f-4dbb-9550-7f7fb0134a35"; } 
                                    attribute :>> isControl = false; 
                                    attribute :>> isControlType = false; 
                                    attribute :>> kindOfNode = ObjectNodeKind::Unspecified; 
                                    attribute :>> ordering = ObjectNodeOrderingKind::FIFO; 
                                }  
                                out port 'FOP 2' : FunctionOutputPort  { 
                                    @CapellaID { eid = "fd2c9fa8-d154-4013-b3bd-6986c90c305a"; } 
                                    attribute :>> isControl = false; 
                                    attribute :>> isControlType = false; 
                                    attribute :>> kindOfNode = ObjectNodeKind::Unspecified; 
                                    attribute :>> ordering = ObjectNodeOrderingKind::FIFO; 
                                     
                                }  
                                ref :>> inputs =  ('FIP 1',
                                'FIP 2'); 
                                ref :>> outputs =  ('FOP 2'); 
                            }  
                            action 'Convert Friction Force to Stopping Torque' : PhysicalFunction  { 
                                doc /*
                                <p>The pads grip the rotor and create friction.</p>

                                */ 
                                @CapellaID { eid = "70a73845-47c4-4136-8fda-77d31695da59"; } 
                                attribute :>> aggregationKind = AggregationKind::UNSET; 
                                attribute :>> isFinal = false; 
                                attribute :>> isAbstract = false; 
                                attribute :>> isDerived = false; 
                                attribute :>> isPartOfKey = false; 
                                attribute :>> isReadOnly = false; 
                                attribute :>> isStatic = false; 
                                attribute :>> kind = FunctionKind::FUNCTION; 
                                attribute :>> isMaxInclusive = false; 
                                attribute :>> isMinInclusive = false; 
                                attribute :>> isOrdered = false; 
                                attribute :>> isUnique = false; 
                                in port 'FIP 1' : FunctionInputPort  { 
                                    @CapellaID { eid = "a096b246-0486-4fc4-9c11-2fa003115440"; } 
                                    attribute :>> isControl = false; 
                                    attribute :>> isControlType = false; 
                                    attribute :>> kindOfNode = ObjectNodeKind::Unspecified; 
                                    attribute :>> ordering = ObjectNodeOrderingKind::FIFO; 
                                }  
                                in port 'FIP 2' : FunctionInputPort  { 
                                    @CapellaID { eid = "5c5a3a7f-ea19-4cb5-ae77-b4571389ffa3"; } 
                                    attribute :>> isControl = false; 
                                    attribute :>> isControlType = false; 
                                    attribute :>> kindOfNode = ObjectNodeKind::Unspecified; 
                                    attribute :>> ordering = ObjectNodeOrderingKind::FIFO; 
                                }  
                                out port 'FOP 1' : FunctionOutputPort  { 
                                    @CapellaID { eid = "c65cfe1a-d758-4f01-9066-5278662fec0f"; } 
                                    attribute :>> isControl = false; 
                                    attribute :>> isControlType = false; 
                                    attribute :>> kindOfNode = ObjectNodeKind::Unspecified; 
                                    attribute :>> ordering = ObjectNodeOrderingKind::FIFO; 
                                }  
                                ref :>> inputs =  ('FIP 1',
                                'FIP 2'); 
                                ref :>> outputs =  ('FOP 1'); 
                            }  
                            out port 'FOP 3' : FunctionOutputPort  { 
                                @CapellaID { eid = "d1c3830a-757f-447b-a49a-21edabb1376c"; } 
                                attribute :>> isControl = false; 
                                attribute :>> isControlType = false; 
                                attribute :>> kindOfNode = ObjectNodeKind::Unspecified; 
                                attribute :>> ordering = ObjectNodeOrderingKind::FIFO; 
                                 
                            }  
                            ref :>> ownedFunctions =  ('Convert Friction Force to Stopping Torque',
                            'Convert Friction Force to Stopping Torque'); 
                            ref :>> outputs =  ('FOP 3'); 
                             
                        }  
                        action 'Gather 17' : PhysicalFunction  { 
                            @CapellaID { eid = "860c179d-6ffa-4e13-9d5f-9f77d10cdcf0"; } 
                            attribute :>> aggregationKind = AggregationKind::UNSET; 
                            attribute :>> isFinal = false; 
                            attribute :>> isAbstract = false; 
                            attribute :>> isDerived = false; 
                            attribute :>> isPartOfKey = false; 
                            attribute :>> isReadOnly = false; 
                            attribute :>> isStatic = false; 
                            attribute :>> kind = FunctionKind::GATHER; 
                            attribute :>> isMaxInclusive = false; 
                            attribute :>> isMinInclusive = false; 
                            attribute :>> isOrdered = false; 
                            attribute :>> isUnique = false; 
                            in port 'FIP 1' : FunctionInputPort  { 
                                @CapellaID { eid = "221c3065-50f4-4081-b83c-0766c7b024ad"; } 
                                attribute :>> isControl = false; 
                                attribute :>> isControlType = false; 
                                attribute :>> kindOfNode = ObjectNodeKind::Unspecified; 
                                attribute :>> ordering = ObjectNodeOrderingKind::FIFO; 
                                 
                            }  
                            in port 'FIP 2' : FunctionInputPort  { 
                                @CapellaID { eid = "071b60bf-407f-4272-b1dd-a2e109fa9b6e"; } 
                                attribute :>> isControl = false; 
                                attribute :>> isControlType = false; 
                                attribute :>> kindOfNode = ObjectNodeKind::Unspecified; 
                                attribute :>> ordering = ObjectNodeOrderingKind::FIFO; 
                                 
                            }  
                            in port 'FIP 3' : FunctionInputPort  { 
                                @CapellaID { eid = "cd82f468-3dec-478f-8b61-fa6c21ab40f7"; } 
                                attribute :>> isControl = false; 
                                attribute :>> isControlType = false; 
                                attribute :>> kindOfNode = ObjectNodeKind::Unspecified; 
                                attribute :>> ordering = ObjectNodeOrderingKind::FIFO; 
                            }  
                            in port 'FIP 4' : FunctionInputPort  { 
                                @CapellaID { eid = "93c67300-14f8-4eca-8bca-1792cad22840"; } 
                                attribute :>> isControl = false; 
                                attribute :>> isControlType = false; 
                                attribute :>> kindOfNode = ObjectNodeKind::Unspecified; 
                                attribute :>> ordering = ObjectNodeOrderingKind::FIFO; 
                            }  
                            out port 'FOP 1' : FunctionOutputPort  { 
                                @CapellaID { eid = "5df9da66-0c61-45a1-97e2-bb0c2c1721bb"; } 
                                attribute :>> isControl = false; 
                                attribute :>> isControlType = false; 
                                attribute :>> kindOfNode = ObjectNodeKind::Unspecified; 
                                attribute :>> ordering = ObjectNodeOrderingKind::FIFO; 
                                 
                            }  
                            ref :>> inputs =  ('FIP 1',
                            'FIP 2',
                            'FIP 3',
                            'FIP 4'); 
                            ref :>> outputs =  ('FOP 1'); 
                             
                        }  
                        action 'Detect Brake Engagement Level' : PhysicalFunction  { 
                            @CapellaID { eid = "259690bf-4f9f-4861-b0db-9eeb845b3475"; } 
                            attribute :>> aggregationKind = AggregationKind::UNSET; 
                            attribute :>> isFinal = false; 
                            attribute :>> isAbstract = false; 
                            attribute :>> isDerived = false; 
                            attribute :>> isPartOfKey = false; 
                            attribute :>> isReadOnly = false; 
                            attribute :>> isStatic = false; 
                            attribute :>> kind = FunctionKind::FUNCTION; 
                            attribute :>> isMaxInclusive = false; 
                            attribute :>> isMinInclusive = false; 
                            attribute :>> isOrdered = false; 
                            attribute :>> isUnique = false; 
                            in port 'FIP 1' : FunctionInputPort  { 
                                @CapellaID { eid = "62a1fd51-afa1-4e36-bad0-c5da09fd2621"; } 
                                attribute :>> isControl = false; 
                                attribute :>> isControlType = false; 
                                attribute :>> kindOfNode = ObjectNodeKind::Unspecified; 
                                attribute :>> ordering = ObjectNodeOrderingKind::FIFO; 
                                 
                            }  
                            in port 'FIP 2' : FunctionInputPort  { 
                                @CapellaID { eid = "d45b54b7-3bbc-469e-ad7e-cca88ab43104"; } 
                                attribute :>> isControl = false; 
                                attribute :>> isControlType = false; 
                                attribute :>> kindOfNode = ObjectNodeKind::Unspecified; 
                                attribute :>> ordering = ObjectNodeOrderingKind::FIFO; 
                                 
                            }  
                            in port 'FIP 3' : FunctionInputPort  { 
                                @CapellaID { eid = "6bbdf6d4-b21d-40af-9de7-771b4c1fe5e9"; } 
                                attribute :>> isControl = false; 
                                attribute :>> isControlType = false; 
                                attribute :>> kindOfNode = ObjectNodeKind::Unspecified; 
                                attribute :>> ordering = ObjectNodeOrderingKind::FIFO; 
                                 
                            }  
                            out port 'FOP 1' : FunctionOutputPort  { 
                                @CapellaID { eid = "d7aa7653-a313-490e-b698-6f8ccb9055d7"; } 
                                attribute :>> isControl = false; 
                                attribute :>> isControlType = false; 
                                attribute :>> kindOfNode = ObjectNodeKind::Unspecified; 
                                attribute :>> ordering = ObjectNodeOrderingKind::FIFO; 
                                 
                            }  
                            out port 'FOP 2' : FunctionOutputPort  { 
                                @CapellaID { eid = "1d8fdb9a-a2cd-4e67-971f-f6855dd6ae8e"; } 
                                attribute :>> isControl = false; 
                                attribute :>> isControlType = false; 
                                attribute :>> kindOfNode = ObjectNodeKind::Unspecified; 
                                attribute :>> ordering = ObjectNodeOrderingKind::FIFO; 
                                 
                            }  
                            ref :>> inputs =  ('FIP 1',
                            'FIP 2',
                            'FIP 3'); 
                            ref :>> outputs =  ('FOP 1',
                            'FOP 2'); 
                             
                        }  
                        action 'Monitor Pad Wear' : PhysicalFunction  { 
                            @CapellaID { eid = "a137ce92-4c0d-4d1f-b103-ce2452c9f5e5"; } 
                            attribute :>> aggregationKind = AggregationKind::UNSET; 
                            attribute :>> isFinal = false; 
                            attribute :>> isAbstract = false; 
                            attribute :>> isDerived = false; 
                            attribute :>> isPartOfKey = false; 
                            attribute :>> isReadOnly = false; 
                            attribute :>> isStatic = false; 
                            attribute :>> kind = FunctionKind::FUNCTION; 
                            attribute :>> isMaxInclusive = false; 
                            attribute :>> isMinInclusive = false; 
                            attribute :>> isOrdered = false; 
                            attribute :>> isUnique = false; 
                            in port 'FIP 1' : FunctionInputPort  { 
                                @CapellaID { eid = "1d864578-706b-41fb-8c16-0661a42411fc"; } 
                                attribute :>> isControl = false; 
                                attribute :>> isControlType = false; 
                                attribute :>> kindOfNode = ObjectNodeKind::Unspecified; 
                                attribute :>> ordering = ObjectNodeOrderingKind::FIFO; 
                                 
                            }  
                            out port 'FOP 1' : FunctionOutputPort  { 
                                @CapellaID { eid = "4fa78985-d924-47e7-b19d-f077dbf16066"; } 
                                attribute :>> isControl = false; 
                                attribute :>> isControlType = false; 
                                attribute :>> kindOfNode = ObjectNodeKind::Unspecified; 
                                attribute :>> ordering = ObjectNodeOrderingKind::FIFO; 
                                 
                            }  
                            ref :>> inputs =  ('FIP 1'); 
                            ref :>> outputs =  ('FOP 1'); 
                             
                        }  
                        action 'Report Status to Rider' : PhysicalFunction  { 
                            @CapellaID { eid = "e025973b-a992-484c-a2c5-5645c1e67be5"; } 
                            attribute :>> aggregationKind = AggregationKind::UNSET; 
                            attribute :>> isFinal = false; 
                            attribute :>> isAbstract = false; 
                            attribute :>> isDerived = false; 
                            attribute :>> isPartOfKey = false; 
                            attribute :>> isReadOnly = false; 
                            attribute :>> isStatic = false; 
                            attribute :>> kind = FunctionKind::FUNCTION; 
                            attribute :>> isMaxInclusive = false; 
                            attribute :>> isMinInclusive = false; 
                            attribute :>> isOrdered = false; 
                            attribute :>> isUnique = false; 
                            in port 'FIP 1' : FunctionInputPort  { 
                                @CapellaID { eid = "642c541b-6888-4924-ba26-7aed580d81b6"; } 
                                attribute :>> isControl = false; 
                                attribute :>> isControlType = false; 
                                attribute :>> kindOfNode = ObjectNodeKind::Unspecified; 
                                attribute :>> ordering = ObjectNodeOrderingKind::FIFO; 
                                 
                            }  
                            out port 'FOP 1' : FunctionOutputPort  { 
                                @CapellaID { eid = "5be376b3-4cdc-4a76-adf3-ecbe74b893ca"; } 
                                attribute :>> isControl = false; 
                                attribute :>> isControlType = false; 
                                attribute :>> kindOfNode = ObjectNodeKind::Unspecified; 
                                attribute :>> ordering = ObjectNodeOrderingKind::FIFO; 
                                 
                            }  
                            ref :>> inputs =  ('FIP 1'); 
                            ref :>> outputs =  ('FOP 1'); 
                             
                        }  
                        action 'Transmit Data' : PhysicalFunction  { 
                            @CapellaID { eid = "1caf9c7f-a875-4a47-a49d-f7c56d3df0c9"; } 
                            attribute :>> aggregationKind = AggregationKind::UNSET; 
                            attribute :>> isFinal = false; 
                            attribute :>> isAbstract = false; 
                            attribute :>> isDerived = false; 
                            attribute :>> isPartOfKey = false; 
                            attribute :>> isReadOnly = false; 
                            attribute :>> isStatic = false; 
                            attribute :>> kind = FunctionKind::FUNCTION; 
                            attribute :>> isMaxInclusive = false; 
                            attribute :>> isMinInclusive = false; 
                            attribute :>> isOrdered = false; 
                            attribute :>> isUnique = false; 
                            in port 'FIP 1' : FunctionInputPort  { 
                                @CapellaID { eid = "3d595656-f5f2-4a03-a3ef-5b77e6b8e255"; } 
                                attribute :>> isControl = false; 
                                attribute :>> isControlType = false; 
                                attribute :>> kindOfNode = ObjectNodeKind::Unspecified; 
                                attribute :>> ordering = ObjectNodeOrderingKind::FIFO; 
                                 
                            }  
                            out port 'FOP 1' : FunctionOutputPort  { 
                                @CapellaID { eid = "8d9e3bdb-0eb1-4362-91f3-2d92666be318"; } 
                                attribute :>> isControl = false; 
                                attribute :>> isControlType = false; 
                                attribute :>> kindOfNode = ObjectNodeKind::Unspecified; 
                                attribute :>> ordering = ObjectNodeOrderingKind::FIFO; 
                                 
                            }  
                            ref :>> inputs =  ('FIP 1'); 
                            ref :>> outputs =  ('FOP 1'); 
                             
                        }  
                        ref :>> ownedFunctionalExchanges =  ('7e92428b-766c-4404-b3c6-0658f5673911',
                        'bf2cb91a-08b2-4348-a4e5-00b88a02f063',
                        '30d2a0d9-8bf3-44b1-9511-224321fb4b88',
                        '5129235a-4238-4b6e-9dcc-eceefd40f6ba',
                        '0ead8d1e-cff5-435a-99f7-842f661bd9c7',
                        'f208f5b7-0c8a-495e-9caa-080b65f02a67',
                        'f0f1f71e-bb6c-450c-acf2-40d8e1c108e1',
                        'b00df868-161f-49af-a1c9-a68c2fad0003',
                        'b80956c9-3756-4597-a12e-d51a8b323abb',
                        'e71a14bb-0728-41e8-8d08-74aea00a35b9',
                        '0cb635b8-424c-43a2-bd07-ebc293865d01',
                        'e46534c7-f2ea-4987-a54e-1e5284ceac34',
                        '101a79b8-528c-4a65-ac23-952035322ae9',
                        '770dedc8-1a04-4afd-8183-7c575263fa14',
                        '678b5653-4dfe-4d9e-962e-db56601ddf0d',
                        '5a9d246f-8388-44ae-b373-e150a4e822a6',
                        '0f339377-0ff7-4b5c-b464-8f999bad65e9',
                        'fbc32d30-3f11-4fee-a2fc-2f1f63842e37',
                        'f0a1523f-46a1-4b67-bfb4-9ca8e325da14',
                        'db8942ec-ffb7-4d07-abbf-4d2aa4fd6ebe',
                        'dc66cee8-ff16-4d25-b988-ea1d763276bd',
                        '82a2620e-8758-4c61-a491-890fed334722',
                        '7cf337f0-fe61-441a-b518-4317fac5ae2b',
                        '901f9837-48c2-4e01-969f-e5a3bd89c76f',
                        '107d695a-7947-436c-ab45-f32601351120',
                        '22245a58-6a60-4231-a8b0-a5c1bd2615a0',
                        'bbac7fbe-74a3-45af-be84-0619a04671f1',
                        '3efa0745-98a6-45df-afc5-407fc318896e',
                        '831291ae-5f9e-4271-9d02-4d652c19176e',
                        '457087c1-dfd6-47b1-93ab-d3b07aaffd96',
                        '763a580a-732f-4649-8b96-377bdd7a9832',
                        'eb93c1e9-f8f6-49d2-8865-be38b83fc78d',
                        '6fa1b1fd-8afc-4529-a200-b49b1c88f45f',
                        '395b900a-d34f-4be7-80c8-2c6afe562246',
                        '56903f47-249d-4c35-aef5-179a101b5b94',
                        '0aeaacf1-afe0-4d37-b005-cee78cf95e96',
                        'bfc10a00-2b64-45c7-a123-a1ba15555a46',
                        '0376d1b9-6c02-40d6-a81a-c4126f01c285',
                        '27b6dd11-edf2-4f6e-9f32-ca8f298dceb0',
                        '24a58552-fdc0-4191-96ca-a8abadab2a6e',
                        'ab708579-151c-4f03-b072-dc50fcca00a4',
                        '8715aff4-9ac2-4bd1-9ff7-d3efbea9e1d0',
                        'aa226f51-fd97-4b33-8f65-3d265ef63db1',
                        'c4b5cb70-dddd-44cf-a2a0-ec4997707778',
                        'fdfe3937-2bd1-477d-8ed8-ca06b1f6436b',
                        'a8d4cdc9-84a8-4dcb-88c4-89a45e29ea67',
                        '1e2da5f1-0356-4d86-89e8-fffda431b2a2',
                        '147380bb-5f53-4152-80c2-8178d295af72'); 
                        ref :>> ownedFunctions =  ('Capture Brake Input',
                        'Modulate Input Forces',
                        'Translate Mechanical Action to Signal',
                        'Tranmit Signal',
                        'Transmit Force',
                        'Transmit Force ',
                        'Transmit Signal',
                        'Provide Backup',
                        'Receive Force',
                        'Receive Signal',
                        'Position Pads',
                        'Amplify Force',
                        'Amplify Force',
                        'Position Pads',
                        'Friction to Rotors',
                        'Apply Friction to Rotors',
                        'Gather 17',
                        'Detect Brake Engagement Level',
                        'Monitor Pad Wear',
                        'Report Status to Rider',
                        'Transmit Data'); 
                         
                    }  
                    action 'Support' : PhysicalFunction  { 
                        @CapellaID { eid = "e1a95c46-ea0d-4ab1-bae6-83a89d546400"; } 
                        attribute :>> aggregationKind = AggregationKind::UNSET; 
                        attribute :>> isFinal = false; 
                        attribute :>> isAbstract = false; 
                        attribute :>> isDerived = false; 
                        attribute :>> isPartOfKey = false; 
                        attribute :>> isReadOnly = false; 
                        attribute :>> isStatic = false; 
                        attribute :>> kind = FunctionKind::FUNCTION; 
                        attribute :>> isMaxInclusive = false; 
                        attribute :>> isMinInclusive = false; 
                        attribute :>> isOrdered = false; 
                        attribute :>> isUnique = false; 
                        out port 'FOP 2' : FunctionOutputPort  { 
                            @CapellaID { eid = "24e848aa-5abf-4b6c-ac9e-10b2eedc440d"; } 
                            attribute :>> isControl = false; 
                            attribute :>> isControlType = false; 
                            attribute :>> kindOfNode = ObjectNodeKind::Unspecified; 
                            attribute :>> ordering = ObjectNodeOrderingKind::FIFO; 
                             
                        }  
                        ref :>> outputs =  ('FOP 2'); 
                         
                    }  
                    action 'Transfer Propulson and Stopping Force' : PhysicalFunction  { 
                        @CapellaID { eid = "ffdee7d6-1abd-41a6-a626-0cb05ad20712"; } 
                        attribute :>> aggregationKind = AggregationKind::UNSET; 
                        attribute :>> isFinal = false; 
                        attribute :>> isAbstract = false; 
                        attribute :>> isDerived = false; 
                        attribute :>> isPartOfKey = false; 
                        attribute :>> isReadOnly = false; 
                        attribute :>> isStatic = false; 
                        attribute :>> kind = FunctionKind::FUNCTION; 
                        attribute :>> isMaxInclusive = false; 
                        attribute :>> isMinInclusive = false; 
                        attribute :>> isOrdered = false; 
                        attribute :>> isUnique = false; 
                        in port 'FIP 2' : FunctionInputPort  { 
                            @CapellaID { eid = "920923f9-0045-4c84-b574-15cd4a6e6a3c"; } 
                            attribute :>> isControl = false; 
                            attribute :>> isControlType = false; 
                            attribute :>> kindOfNode = ObjectNodeKind::Unspecified; 
                            attribute :>> ordering = ObjectNodeOrderingKind::FIFO; 
                             
                        }  
                        ref :>> inputs =  ('FIP 2'); 
                         
                    }  
                    action 'Observe Status' : PhysicalFunction  { 
                        @CapellaID { eid = "749f4c83-05d5-4a23-bc15-358895193cbb"; } 
                        attribute :>> aggregationKind = AggregationKind::UNSET; 
                        attribute :>> isFinal = false; 
                        attribute :>> isAbstract = false; 
                        attribute :>> isDerived = false; 
                        attribute :>> isPartOfKey = false; 
                        attribute :>> isReadOnly = false; 
                        attribute :>> isStatic = false; 
                        attribute :>> kind = FunctionKind::FUNCTION; 
                        attribute :>> isMaxInclusive = false; 
                        attribute :>> isMinInclusive = false; 
                        attribute :>> isOrdered = false; 
                        attribute :>> isUnique = false; 
                        in port 'FIP 1' : FunctionInputPort  { 
                            @CapellaID { eid = "ccdfb630-0889-4f19-b509-97b8a3ea3ec3"; } 
                            attribute :>> isControl = false; 
                            attribute :>> isControlType = false; 
                            attribute :>> kindOfNode = ObjectNodeKind::Unspecified; 
                            attribute :>> ordering = ObjectNodeOrderingKind::FIFO; 
                             
                        }  
                        ref :>> inputs =  ('FIP 1'); 
                         
                    }  
                    action 'Monitor Diagnostics' : PhysicalFunction  { 
                        @CapellaID { eid = "7b805dd2-fc60-464e-a9a7-35a2522a01de"; } 
                        attribute :>> aggregationKind = AggregationKind::UNSET; 
                        attribute :>> isFinal = false; 
                        attribute :>> isAbstract = false; 
                        attribute :>> isDerived = false; 
                        attribute :>> isPartOfKey = false; 
                        attribute :>> isReadOnly = false; 
                        attribute :>> isStatic = false; 
                        attribute :>> kind = FunctionKind::FUNCTION; 
                        attribute :>> isMaxInclusive = false; 
                        attribute :>> isMinInclusive = false; 
                        attribute :>> isOrdered = false; 
                        attribute :>> isUnique = false; 
                        in port 'FIP 1' : FunctionInputPort  { 
                            @CapellaID { eid = "aee1000b-fb83-4815-9609-52e3e881b83c"; } 
                            attribute :>> isControl = false; 
                            attribute :>> isControlType = false; 
                            attribute :>> kindOfNode = ObjectNodeKind::Unspecified; 
                            attribute :>> ordering = ObjectNodeOrderingKind::FIFO; 
                             
                        }  
                        ref :>> inputs =  ('FIP 1'); 
                         
                    }  
                    action 'Provide environmental contitions' : PhysicalFunction  { 
                        @CapellaID { eid = "116b01df-b977-4aa1-9eae-cb905ea6a5b8"; } 
                        attribute :>> aggregationKind = AggregationKind::UNSET; 
                        attribute :>> isFinal = false; 
                        attribute :>> isAbstract = false; 
                        attribute :>> isDerived = false; 
                        attribute :>> isPartOfKey = false; 
                        attribute :>> isReadOnly = false; 
                        attribute :>> isStatic = false; 
                        attribute :>> kind = FunctionKind::FUNCTION; 
                        attribute :>> isMaxInclusive = false; 
                        attribute :>> isMinInclusive = false; 
                        attribute :>> isOrdered = false; 
                        attribute :>> isUnique = false; 
                        out port 'FOP 1' : FunctionOutputPort  { 
                            @CapellaID { eid = "6fbec8db-8855-407d-ba4b-ec06b3e6a8ae"; } 
                            attribute :>> isControl = false; 
                            attribute :>> isControlType = false; 
                            attribute :>> kindOfNode = ObjectNodeKind::Unspecified; 
                            attribute :>> ordering = ObjectNodeOrderingKind::FIFO; 
                             
                        }  
                        out port 'FOP 2' : FunctionOutputPort  { 
                            @CapellaID { eid = "b41abfdc-c38b-4f86-b411-ef53b58cdb69"; } 
                            attribute :>> isControl = false; 
                            attribute :>> isControlType = false; 
                            attribute :>> kindOfNode = ObjectNodeKind::Unspecified; 
                            attribute :>> ordering = ObjectNodeOrderingKind::FIFO; 
                             
                        }  
                        out port 'FOP 3' : FunctionOutputPort  { 
                            @CapellaID { eid = "31dbaed6-7e17-48db-a92b-e88d56c07463"; } 
                            attribute :>> isControl = false; 
                            attribute :>> isControlType = false; 
                            attribute :>> kindOfNode = ObjectNodeKind::Unspecified; 
                            attribute :>> ordering = ObjectNodeOrderingKind::FIFO; 
                             
                        }  
                        out port 'FOP 4' : FunctionOutputPort  { 
                            @CapellaID { eid = "52c32ec5-4c58-41fa-87f0-8889d4e54040"; } 
                            attribute :>> isControl = false; 
                            attribute :>> isControlType = false; 
                            attribute :>> kindOfNode = ObjectNodeKind::Unspecified; 
                            attribute :>> ordering = ObjectNodeOrderingKind::FIFO; 
                             
                        }  
                        ref :>> outputs =  ('FOP 1',
                        'FOP 2',
                        'FOP 3',
                        'FOP 4'); 
                         
                    }  
                    action 'Receieve Environment' : PhysicalFunction  { 
                        @CapellaID { eid = "19fe8773-8a65-496a-af35-b474fb24ea04"; } 
                        attribute :>> aggregationKind = AggregationKind::UNSET; 
                        attribute :>> isFinal = false; 
                        attribute :>> isAbstract = false; 
                        attribute :>> isDerived = false; 
                        attribute :>> isPartOfKey = false; 
                        attribute :>> isReadOnly = false; 
                        attribute :>> isStatic = false; 
                        attribute :>> kind = FunctionKind::FUNCTION; 
                        attribute :>> isMaxInclusive = false; 
                        attribute :>> isMinInclusive = false; 
                        attribute :>> isOrdered = false; 
                        attribute :>> isUnique = false; 
                        in port 'FIP 1' : FunctionInputPort  { 
                            @CapellaID { eid = "b0da4fe7-0443-44c5-8caa-ef30bfbc4fe4"; } 
                            attribute :>> isControl = false; 
                            attribute :>> isControlType = false; 
                            attribute :>> kindOfNode = ObjectNodeKind::Unspecified; 
                            attribute :>> ordering = ObjectNodeOrderingKind::FIFO; 
                             
                        }  
                        ref :>> inputs =  ('FIP 1'); 
                         
                    }  
                    action 'Receive Environment' : PhysicalFunction  { 
                        @CapellaID { eid = "12324f6f-4c35-4d78-b8b5-672be16b79e5"; } 
                        attribute :>> aggregationKind = AggregationKind::UNSET; 
                        attribute :>> isFinal = false; 
                        attribute :>> isAbstract = false; 
                        attribute :>> isDerived = false; 
                        attribute :>> isPartOfKey = false; 
                        attribute :>> isReadOnly = false; 
                        attribute :>> isStatic = false; 
                        attribute :>> kind = FunctionKind::FUNCTION; 
                        attribute :>> isMaxInclusive = false; 
                        attribute :>> isMinInclusive = false; 
                        attribute :>> isOrdered = false; 
                        attribute :>> isUnique = false; 
                        in port 'FIP 1' : FunctionInputPort  { 
                            @CapellaID { eid = "afe9474b-ed57-4148-a1d3-5c0d847d5e04"; } 
                            attribute :>> isControl = false; 
                            attribute :>> isControlType = false; 
                            attribute :>> kindOfNode = ObjectNodeKind::Unspecified; 
                            attribute :>> ordering = ObjectNodeOrderingKind::FIFO; 
                             
                        }  
                        ref :>> inputs =  ('FIP 1'); 
                         
                    }  
                    action 'Receive Environment' : PhysicalFunction  { 
                        @CapellaID { eid = "7b9fc4ea-02f8-4136-92fc-ccac97a7e342"; } 
                        attribute :>> aggregationKind = AggregationKind::UNSET; 
                        attribute :>> isFinal = false; 
                        attribute :>> isAbstract = false; 
                        attribute :>> isDerived = false; 
                        attribute :>> isPartOfKey = false; 
                        attribute :>> isReadOnly = false; 
                        attribute :>> isStatic = false; 
                        attribute :>> kind = FunctionKind::FUNCTION; 
                        attribute :>> isMaxInclusive = false; 
                        attribute :>> isMinInclusive = false; 
                        attribute :>> isOrdered = false; 
                        attribute :>> isUnique = false; 
                        in port 'FIP 1' : FunctionInputPort  { 
                            @CapellaID { eid = "ee302d54-1296-4afe-931e-d13a62e5d792"; } 
                            attribute :>> isControl = false; 
                            attribute :>> isControlType = false; 
                            attribute :>> kindOfNode = ObjectNodeKind::Unspecified; 
                            attribute :>> ordering = ObjectNodeOrderingKind::FIFO; 
                             
                        }  
                        ref :>> inputs =  ('FIP 1'); 
                         
                    }  
                    action 'Recieve Environment' : PhysicalFunction  { 
                        @CapellaID { eid = "106e6570-442f-45da-8348-7ae3c32b50f0"; } 
                        attribute :>> aggregationKind = AggregationKind::UNSET; 
                        attribute :>> isFinal = false; 
                        attribute :>> isAbstract = false; 
                        attribute :>> isDerived = false; 
                        attribute :>> isPartOfKey = false; 
                        attribute :>> isReadOnly = false; 
                        attribute :>> isStatic = false; 
                        attribute :>> kind = FunctionKind::FUNCTION; 
                        attribute :>> isMaxInclusive = false; 
                        attribute :>> isMinInclusive = false; 
                        attribute :>> isOrdered = false; 
                        attribute :>> isUnique = false; 
                        in port 'FIP 1' : FunctionInputPort  { 
                            @CapellaID { eid = "2cbc6b1a-6e25-48f6-949b-b0b74e0f957a"; } 
                            attribute :>> isControl = false; 
                            attribute :>> isControlType = false; 
                            attribute :>> kindOfNode = ObjectNodeKind::Unspecified; 
                            attribute :>> ordering = ObjectNodeOrderingKind::FIFO; 
                             
                        }  
                        ref :>> inputs =  ('FIP 1'); 
                         
                    }  
                    action 'Maintain Fluid' : PhysicalFunction  { 
                        @CapellaID { eid = "6f9e79af-97be-4d50-91d1-7cac24d1b5c3"; } 
                        attribute :>> aggregationKind = AggregationKind::UNSET; 
                        attribute :>> isFinal = false; 
                        attribute :>> isAbstract = false; 
                        attribute :>> isDerived = false; 
                        attribute :>> isPartOfKey = false; 
                        attribute :>> isReadOnly = false; 
                        attribute :>> isStatic = false; 
                        attribute :>> kind = FunctionKind::FUNCTION; 
                        attribute :>> isMaxInclusive = false; 
                        attribute :>> isMinInclusive = false; 
                        attribute :>> isOrdered = false; 
                        attribute :>> isUnique = false; 
                        out port 'FOP 1' : FunctionOutputPort  { 
                            @CapellaID { eid = "287ec818-412b-482e-abe7-31082f372d61"; } 
                            attribute :>> isControl = false; 
                            attribute :>> isControlType = false; 
                            attribute :>> kindOfNode = ObjectNodeKind::Unspecified; 
                            attribute :>> ordering = ObjectNodeOrderingKind::FIFO; 
                        }  
                        out port 'FOP 2' : FunctionOutputPort  { 
                            @CapellaID { eid = "95c7be90-c3f2-42e1-b690-667520343afd"; } 
                            attribute :>> isControl = false; 
                            attribute :>> isControlType = false; 
                            attribute :>> kindOfNode = ObjectNodeKind::Unspecified; 
                            attribute :>> ordering = ObjectNodeOrderingKind::FIFO; 
                        }  
                        ref :>> outputs =  ('FOP 1',
                        'FOP 2'); 
                    }  
                    action 'Activate Left Brake' : PhysicalFunction  { 
                        @CapellaID { eid = "45656a53-6dbc-4745-8fe1-05c63428734c"; } 
                        attribute :>> aggregationKind = AggregationKind::UNSET; 
                        attribute :>> isFinal = false; 
                        attribute :>> isAbstract = false; 
                        attribute :>> isDerived = false; 
                        attribute :>> isPartOfKey = false; 
                        attribute :>> isReadOnly = false; 
                        attribute :>> isStatic = false; 
                        attribute :>> kind = FunctionKind::FUNCTION; 
                        attribute :>> isMaxInclusive = false; 
                        attribute :>> isMinInclusive = false; 
                        attribute :>> isOrdered = false; 
                        attribute :>> isUnique = false; 
                        out port 'FOP 1' : FunctionOutputPort  { 
                            @CapellaID { eid = "2bd46c5d-c5f8-4363-b2a5-bd0eb226cf0b"; } 
                            attribute :>> isControl = false; 
                            attribute :>> isControlType = false; 
                            attribute :>> kindOfNode = ObjectNodeKind::Unspecified; 
                            attribute :>> ordering = ObjectNodeOrderingKind::FIFO; 
                            ref :>> outgoingExchangeItems =  ('System Analysis'::'Data'::'Force'); 
                        }  
                        ref :>> outputs =  ('FOP 1'); 
                    }  
                    action 'Activate Right Brake' : PhysicalFunction  { 
                        @CapellaID { eid = "1a0bde17-6145-48ce-8d2f-9decd8f64046"; } 
                        attribute :>> aggregationKind = AggregationKind::UNSET; 
                        attribute :>> isFinal = false; 
                        attribute :>> isAbstract = false; 
                        attribute :>> isDerived = false; 
                        attribute :>> isPartOfKey = false; 
                        attribute :>> isReadOnly = false; 
                        attribute :>> isStatic = false; 
                        attribute :>> kind = FunctionKind::FUNCTION; 
                        attribute :>> isMaxInclusive = false; 
                        attribute :>> isMinInclusive = false; 
                        attribute :>> isOrdered = false; 
                        attribute :>> isUnique = false; 
                        out port 'FOP 3' : FunctionOutputPort  { 
                            @CapellaID { eid = "ab05aa58-6d6f-46ff-8135-40434d3d9dc2"; } 
                            attribute :>> isControl = false; 
                            attribute :>> isControlType = false; 
                            attribute :>> kindOfNode = ObjectNodeKind::Unspecified; 
                            attribute :>> ordering = ObjectNodeOrderingKind::FIFO; 
                        }  
                        ref :>> outputs =  ('FOP 3'); 
                    }  
                    action 'Receive Support' : PhysicalFunction  { 
                        @CapellaID { eid = "95fb819e-0ffb-4596-a825-d2f25cd54e48"; } 
                        attribute :>> aggregationKind = AggregationKind::UNSET; 
                        attribute :>> isFinal = false; 
                        attribute :>> isAbstract = false; 
                        attribute :>> isDerived = false; 
                        attribute :>> isPartOfKey = false; 
                        attribute :>> isReadOnly = false; 
                        attribute :>> isStatic = false; 
                        attribute :>> kind = FunctionKind::FUNCTION; 
                        attribute :>> isMaxInclusive = false; 
                        attribute :>> isMinInclusive = false; 
                        attribute :>> isOrdered = false; 
                        attribute :>> isUnique = false; 
                        in port 'FIP 1' : FunctionInputPort  { 
                            @CapellaID { eid = "c4169b3a-99d0-4728-81e2-c84708fc6040"; } 
                            attribute :>> isControl = false; 
                            attribute :>> isControlType = false; 
                            attribute :>> kindOfNode = ObjectNodeKind::Unspecified; 
                            attribute :>> ordering = ObjectNodeOrderingKind::FIFO; 
                        }  
                        ref :>> inputs =  ('FIP 1'); 
                    }  
                    action 'Receive Support' : PhysicalFunction  { 
                        @CapellaID { eid = "397befb4-ef97-4a7e-b9f9-b4dc082bcbf7"; } 
                        attribute :>> aggregationKind = AggregationKind::UNSET; 
                        attribute :>> isFinal = false; 
                        attribute :>> isAbstract = false; 
                        attribute :>> isDerived = false; 
                        attribute :>> isPartOfKey = false; 
                        attribute :>> isReadOnly = false; 
                        attribute :>> isStatic = false; 
                        attribute :>> kind = FunctionKind::FUNCTION; 
                        attribute :>> isMaxInclusive = false; 
                        attribute :>> isMinInclusive = false; 
                        attribute :>> isOrdered = false; 
                        attribute :>> isUnique = false; 
                        in port 'FIP 1' : FunctionInputPort  { 
                            @CapellaID { eid = "c279bdae-78c0-43fa-a7fb-ed0d54980318"; } 
                            attribute :>> isControl = false; 
                            attribute :>> isControlType = false; 
                            attribute :>> kindOfNode = ObjectNodeKind::Unspecified; 
                            attribute :>> ordering = ObjectNodeOrderingKind::FIFO; 
                        }  
                        ref :>> inputs =  ('FIP 1'); 
                    }  
                    action 'Support' : PhysicalFunction  { 
                        @CapellaID { eid = "c03da8b3-40ca-467b-8861-9fde8f7c802e"; } 
                        attribute :>> aggregationKind = AggregationKind::UNSET; 
                        attribute :>> isFinal = false; 
                        attribute :>> isAbstract = false; 
                        attribute :>> isDerived = false; 
                        attribute :>> isPartOfKey = false; 
                        attribute :>> isReadOnly = false; 
                        attribute :>> isStatic = false; 
                        attribute :>> kind = FunctionKind::FUNCTION; 
                        attribute :>> isMaxInclusive = false; 
                        attribute :>> isMinInclusive = false; 
                        attribute :>> isOrdered = false; 
                        attribute :>> isUnique = false; 
                        out port 'FOP 1' : FunctionOutputPort  { 
                            @CapellaID { eid = "8cff16e7-ab00-43ac-a197-25dc230a2a6e"; } 
                            attribute :>> isControl = false; 
                            attribute :>> isControlType = false; 
                            attribute :>> kindOfNode = ObjectNodeKind::Unspecified; 
                            attribute :>> ordering = ObjectNodeOrderingKind::FIFO; 
                        }  
                        ref :>> outputs =  ('FOP 1'); 
                    }  
                    action 'Receive Support' : PhysicalFunction  { 
                        @CapellaID { eid = "39677747-1843-443e-a4d0-f57454e25083"; } 
                        attribute :>> aggregationKind = AggregationKind::UNSET; 
                        attribute :>> isFinal = false; 
                        attribute :>> isAbstract = false; 
                        attribute :>> isDerived = false; 
                        attribute :>> isPartOfKey = false; 
                        attribute :>> isReadOnly = false; 
                        attribute :>> isStatic = false; 
                        attribute :>> kind = FunctionKind::FUNCTION; 
                        attribute :>> isMaxInclusive = false; 
                        attribute :>> isMinInclusive = false; 
                        attribute :>> isOrdered = false; 
                        attribute :>> isUnique = false; 
                        in port 'FIP 1' : FunctionInputPort  { 
                            @CapellaID { eid = "3254a1b0-a690-4aae-9bd3-c637f0799692"; } 
                            attribute :>> isControl = false; 
                            attribute :>> isControlType = false; 
                            attribute :>> kindOfNode = ObjectNodeKind::Unspecified; 
                            attribute :>> ordering = ObjectNodeOrderingKind::FIFO; 
                        }  
                        ref :>> inputs =  ('FIP 1'); 
                    }  
                    action 'Receive Support' : PhysicalFunction  { 
                        @CapellaID { eid = "c5f8aad2-80da-4422-9996-eef61e045cd4"; } 
                        attribute :>> aggregationKind = AggregationKind::UNSET; 
                        attribute :>> isFinal = false; 
                        attribute :>> isAbstract = false; 
                        attribute :>> isDerived = false; 
                        attribute :>> isPartOfKey = false; 
                        attribute :>> isReadOnly = false; 
                        attribute :>> isStatic = false; 
                        attribute :>> kind = FunctionKind::FUNCTION; 
                        attribute :>> isMaxInclusive = false; 
                        attribute :>> isMinInclusive = false; 
                        attribute :>> isOrdered = false; 
                        attribute :>> isUnique = false; 
                        in port 'FIP 1' : FunctionInputPort  { 
                            @CapellaID { eid = "7af0c737-f16b-4332-bf3e-a16b22c36f0a"; } 
                            attribute :>> isControl = false; 
                            attribute :>> isControlType = false; 
                            attribute :>> kindOfNode = ObjectNodeKind::Unspecified; 
                            attribute :>> ordering = ObjectNodeOrderingKind::FIFO; 
                        }  
                        ref :>> inputs =  ('FIP 1'); 
                    }  
                    action 'Receive Support' : PhysicalFunction  { 
                        @CapellaID { eid = "a13ad54c-fdf8-4936-9056-f130cfb7d019"; } 
                        attribute :>> aggregationKind = AggregationKind::UNSET; 
                        attribute :>> isFinal = false; 
                        attribute :>> isAbstract = false; 
                        attribute :>> isDerived = false; 
                        attribute :>> isPartOfKey = false; 
                        attribute :>> isReadOnly = false; 
                        attribute :>> isStatic = false; 
                        attribute :>> kind = FunctionKind::FUNCTION; 
                        attribute :>> isMaxInclusive = false; 
                        attribute :>> isMinInclusive = false; 
                        attribute :>> isOrdered = false; 
                        attribute :>> isUnique = false; 
                        in port 'FIP 1' : FunctionInputPort  { 
                            @CapellaID { eid = "f593b111-9019-4e19-b2fa-8e9fa1ee0ce0"; } 
                            attribute :>> isControl = false; 
                            attribute :>> isControlType = false; 
                            attribute :>> kindOfNode = ObjectNodeKind::Unspecified; 
                            attribute :>> ordering = ObjectNodeOrderingKind::FIFO; 
                        }  
                        ref :>> inputs =  ('FIP 1'); 
                    }  
                    action 'Receive Support' : PhysicalFunction  { 
                        @CapellaID { eid = "3be74aea-316c-4917-ad01-e037c1d488a7"; } 
                        attribute :>> aggregationKind = AggregationKind::UNSET; 
                        attribute :>> isFinal = false; 
                        attribute :>> isAbstract = false; 
                        attribute :>> isDerived = false; 
                        attribute :>> isPartOfKey = false; 
                        attribute :>> isReadOnly = false; 
                        attribute :>> isStatic = false; 
                        attribute :>> kind = FunctionKind::FUNCTION; 
                        attribute :>> isMaxInclusive = false; 
                        attribute :>> isMinInclusive = false; 
                        attribute :>> isOrdered = false; 
                        attribute :>> isUnique = false; 
                        in port 'FIP 1' : FunctionInputPort  { 
                            @CapellaID { eid = "e51dfb63-056d-4c6d-adbe-e2afdf523d93"; } 
                            attribute :>> isControl = false; 
                            attribute :>> isControlType = false; 
                            attribute :>> kindOfNode = ObjectNodeKind::Unspecified; 
                            attribute :>> ordering = ObjectNodeOrderingKind::FIFO; 
                        }  
                        ref :>> inputs =  ('FIP 1'); 
                    }  
                    ref :>> ownedFunctionalExchanges =  ('750015e9-3fa7-4975-b4db-0a4d3c7853ae',
                    '420907b8-393a-472d-803b-c3c6e5fad866',
                    '98b039ea-0f5b-4b4b-bda5-ccb7529d3c36',
                    '3ab52204-b1bd-4f65-902c-cd7f84e8041a',
                    'a391f04f-edd1-4f0e-947e-5cb015af691e',
                    '4b5f517b-785f-442e-a00a-5c9e0e9b12cf',
                    '63df2372-3d06-4f15-9039-f0652c64c630',
                    'a2013f87-e48f-4cad-b932-e7b146c5480b',
                    'b280653f-d17c-4abf-9253-cc14557b15fc',
                    'e80c3b1b-d6e2-4f37-8569-240366dbeb29',
                    '31a21d13-7838-431e-a731-ece4100254a3',
                    '5774f3bf-22b4-463d-a803-453d3a2a3fe8',
                    '544adc36-f23b-4c03-85d2-b013fe729090',
                    'afa54f56-1d6b-4081-9c93-06f59e51bc72',
                    'a11b0ffa-3a7b-4a25-8682-2b7f66c298f8',
                    'a7e608a2-ed67-4e3b-b889-6781f6976309',
                    '0252f398-9b30-4da9-89f5-f950d62c50d1'); 
                    ref :>> ownedFunctions =  ('Provide Stopping',
                    'Support',
                    'Transfer Propulson and Stopping Force',
                    'Observe Status',
                    'Monitor Diagnostics',
                    'Provide environmental contitions',
                    'Receieve Environment',
                    'Receive Environment',
                    'Receive Environment',
                    'Recieve Environment',
                    'Maintain Fluid',
                    'Activate Left Brake',
                    'Activate Right Brake',
                    'Receive Support',
                    'Receive Support',
                    'Support',
                    'Receive Support',
                    'Receive Support',
                    'Receive Support',
                    'Receive Support'); 
                     
                }  
            } 
            package 'Capabilities' {
                @PackageMeta {
                    type = "CapabilityRealizationPkg";
                } 
                @CapellaID { eid = "4764624a-0e77-43bf-8d2c-569b533b4eac"; } 
                use case 'Terrain Navigation' : CapabilityRealization { 
                    @CapellaID { eid = "b8daf7cb-52bf-481e-8847-8e62af96754d"; } 
                    dependency '9f7f9a02-9eed-41f5-a85d-8332fddb6675'
                        from '1664d32e-6f49-4a61-b9f0-c56e1b5df1e3'
                        to  'Logical Architecture'::'Capabilities'::'Terrain Navigation'::'3c1b23a8-b669-4226-a5f4-797e91c870b9' { 
                        @TransfoLink { 
                            @CapellaID { eid = "9f7f9a02-9eed-41f5-a85d-8332fddb6675"; } 
                        }  
                    }  
                    ref action '1664d32e-6f49-4a61-b9f0-c56e1b5df1e3' = 'Physical Functions'::'Root Physical Function'.'Ride Mountain Trails'; 
                     
                }  
                use case 'Durability and Shock Absorption' : CapabilityRealization { 
                    @CapellaID { eid = "17fa9e10-a6f8-489c-a320-83265803e8f4"; } 
                    dependency '055f5684-dfcd-405f-b9a4-b181b5610ea7'
                        from 'a5b5a76e-4dc8-47ed-9ccc-aa31c90975fe'
                        to  'Logical Architecture'::'Capabilities'::'Durability and Shock Absorption'::'9b649a35-29ed-410d-8e42-79bdfc44fe5a' { 
                        @TransfoLink { 
                            @CapellaID { eid = "055f5684-dfcd-405f-b9a4-b181b5610ea7"; } 
                        }  
                    }  
                    ref action 'a5b5a76e-4dc8-47ed-9ccc-aa31c90975fe' = 'Physical Functions'::'Root Physical Function'.'Ride Mountain Trails'; 
                     
                }  
                use case 'Climatic Adabptability' : CapabilityRealization { 
                    @CapellaID { eid = "b16204d1-e4c8-479a-9953-981335a24c66"; } 
                    dependency 'a75cbbac-b121-4eb6-8e2f-b7f361333e37'
                        from 'e9e0a5a6-98ec-4d9a-ab82-95395f8ec9c3'
                        to  'Logical Architecture'::'Capabilities'::'Climatic Adabptability'::'c030b9fb-3b08-453f-95c8-67fbd77d9401' { 
                        @TransfoLink { 
                            @CapellaID { eid = "a75cbbac-b121-4eb6-8e2f-b7f361333e37"; } 
                        }  
                    }  
                    ref action 'e9e0a5a6-98ec-4d9a-ab82-95395f8ec9c3' = 'Physical Functions'::'Root Physical Function'.'Ride Mountain Trails'; 
                     
                }  
                use case 'Maneuverability' : CapabilityRealization { 
                    @CapellaID { eid = "c86b94bc-4bf2-47de-aca9-a821ef91e957"; } 
                    dependency '922a68a4-18a2-44a7-8504-dcd4d1a23b9a'
                        from 'fcd741a9-d27b-44c6-a9b9-e525514c9ce6'
                        to  'Logical Architecture'::'Capabilities'::'Maneuverability'::'888c9126-9ba2-4164-aa3a-84a959124f35' { 
                        @TransfoLink { 
                            @CapellaID { eid = "922a68a4-18a2-44a7-8504-dcd4d1a23b9a"; } 
                        }  
                    }  
                    ref action 'fcd741a9-d27b-44c6-a9b9-e525514c9ce6' = 'Physical Functions'::'Root Physical Function'.'Ride Mountain Trails'; 
                     
                }  
                use case 'Mountain Trail Ride' : CapabilityRealization { 
                    @CapellaID { eid = "7dab2c92-64ca-42d8-b30e-acd33feedf96"; } 
                    dependency '5a00f918-a74c-495a-b064-402745508636'
                        from '9a613283-9d27-4ce9-b2f7-babaea160a45'
                        to  'Logical Architecture'::'Capabilities'::'Mountain Trail Ride'::'11a65fa9-1b5e-4cac-8171-e374470cc26c' { 
                        @TransfoLink { 
                            @CapellaID { eid = "5a00f918-a74c-495a-b064-402745508636"; } 
                        }  
                    }  
                    ref action '9a613283-9d27-4ce9-b2f7-babaea160a45' = 'Physical Functions'::'Root Physical Function'.'Ride Mountain Trails'; 
                     
                }  
            } 
            package 'Interfaces' {
                @PackageMeta {
                    type = "InterfacePkg";
                } 
                @CapellaID { eid = "3a957535-0a20-4f2d-bf50-a5537b56f96c"; } 
            } 
            package 'Data' {
                @PackageMeta {
                    type = "DataPkg";
                } 
                @CapellaID { eid = "32ee1e55-b0dc-4517-8c32-fc8305334d0e"; } 
            } 
            package 'Structure' {
                @PackageMeta {
                    type = "PhysicalComponentPkg";
                } 
                @CapellaID { eid = "171f05b6-a192-4c1c-8555-8879a769c33e"; } 
                dependency '1af979be-f6e3-4c38-8885-76f3998eb9cf'
                    from 'Structure'::'cfb08e0b-e7cb-4b19-9101-f9cc6c28fbc5'
                    to  'Logical Architecture'::'Structure'::'c08b9a6c-4f8c-4445-afd7-9688f482d247' { 
                    @TransfoLink { 
                        @CapellaID { eid = "1af979be-f6e3-4c38-8885-76f3998eb9cf"; } 
                    }  
                }  
                dependency '614dbc72-5a79-48c9-a90b-1df159e60847'
                    from 'Structure'::'1b34b488-15ca-4540-8f1c-6bcc9255e654'
                    to  'Logical Architecture'::'Structure'::'7984cfbb-55d2-47d0-9c72-f5668d4d323a' { 
                    @TransfoLink { 
                        @CapellaID { eid = "614dbc72-5a79-48c9-a90b-1df159e60847"; } 
                    }  
                }  
                dependency '2e1503ff-af00-4ad2-a076-69428cbc00a0'
                    from 'Structure'::'5d3b4885-9c0d-4413-88b9-215bb20fa356'
                    to  'Logical Architecture'::'Structure'::'c951da30-251a-4b19-80db-dda40e2d52c5' { 
                    @TransfoLink { 
                        @CapellaID { eid = "2e1503ff-af00-4ad2-a076-69428cbc00a0"; } 
                    }  
                }  
                dependency '760c2fae-25c0-445d-b5fa-fa3514e0cb74'
                    from 'Structure'::'dd44dd1b-d40e-4e57-9e73-606c69886c60'
                    to  'Logical Architecture'::'Structure'::'d5776da9-707a-4bef-b3bc-72ac48566aa0' { 
                    @TransfoLink { 
                        @CapellaID { eid = "760c2fae-25c0-445d-b5fa-fa3514e0cb74"; } 
                    }  
                }  
                dependency '058c3fba-31eb-43ce-867a-983f437a7f4f'
                    from 'Structure'::'5092ef9d-3f22-4313-8858-540b3dc95e3f'
                    to  'Logical Architecture'::'Structure'::'b15dd2e2-08a5-4f40-93cf-2dc51bfbf2f0' { 
                    @TransfoLink { 
                        @CapellaID { eid = "058c3fba-31eb-43ce-867a-983f437a7f4f"; } 
                    }  
                }  
                interface 'cd3ca139-07f1-4f3c-9182-5fee1e2b7873' : PhysicalLink 
                    connect sourcePhysicalPort ::> 'Physical System'.'Rear Wheel Assembly'.'PP 2'
                    to targetPhysicalPort ::> 'Environment'.'PP 1' {
                    @CapellaID { eid = "cd3ca139-07f1-4f3c-9182-5fee1e2b7873"; } 
                    attribute :>> interfaceName = "PL 1"; 
                }  
                interface '28e97ec8-a460-4c36-b67d-1f2d4711719d' : PhysicalLink 
                    connect sourcePhysicalPort ::> 'Physical System'.'Front Wheel Assembly'.'PP 2'
                    to targetPhysicalPort ::> 'Environment'.'PP 2' {
                    @CapellaID { eid = "28e97ec8-a460-4c36-b67d-1f2d4711719d"; } 
                    attribute :>> interfaceName = "PL 2"; 
                }  
                interface '073c2b89-2b06-4eb9-9385-333ec772216a' : PhysicalLink 
                    connect sourcePhysicalPort ::> 'Physical System'.'Left Hydraulic Brake Assembly'.'Cockpit Handle Bars'
                    to targetPhysicalPort ::> 'Cockpit'.'PP 2' {
                    @CapellaID { eid = "073c2b89-2b06-4eb9-9385-333ec772216a"; } 
                    attribute :>> interfaceName = "PL 5"; 
                     
                }  
                interface '0ca0c2d9-23d9-4b91-9735-f56c7db0f3b8' : PhysicalLink 
                    connect sourcePhysicalPort ::> 'Physical System'.'Right Hydraulic Brake Assembly'.'Cockpit Handle Bars'
                    to targetPhysicalPort ::> 'Cockpit'.'PP 3' {
                    @CapellaID { eid = "0ca0c2d9-23d9-4b91-9735-f56c7db0f3b8"; } 
                    attribute :>> interfaceName = "PL 6"; 
                     
                }  
                interface 'd10122d7-77cd-4102-a64e-16e144edd98b' : PhysicalLink 
                    connect sourcePhysicalPort ::> 'Physical System'.'Front Caliper'.'Frame'
                    to targetPhysicalPort ::> 'Frame and Suspension'.'PP 4' {
                    @CapellaID { eid = "d10122d7-77cd-4102-a64e-16e144edd98b"; } 
                    attribute :>> interfaceName = "PL 7"; 
                     
                }  
                interface '6b1784dd-db30-4fc8-94e9-6d67c482abb9' : PhysicalLink 
                    connect sourcePhysicalPort ::> 'Physical System'.'Front Rotor'.'PP 3'
                    to targetPhysicalPort ::> 'Wheels and Tires'.'PP 4' {
                    @CapellaID { eid = "6b1784dd-db30-4fc8-94e9-6d67c482abb9"; } 
                    attribute :>> interfaceName = "PL 8"; 
                     
                }  
                interface '366ae4f2-0f7b-4840-a33f-48a4f10aa024' : PhysicalLink 
                    connect sourcePhysicalPort ::> 'Physical System'.'Rear Rotor'.'Wheel Tires'
                    to targetPhysicalPort ::> 'Wheels and Tires'.'Wheel' {
                    @CapellaID { eid = "366ae4f2-0f7b-4840-a33f-48a4f10aa024"; } 
                    attribute :>> interfaceName = "PL 9"; 
                     
                }  
                interface '1e4f5d12-aff0-4f9e-930d-5dcc2d823bcb' : PhysicalLink 
                    connect sourcePhysicalPort ::> 'Rider'.'PP 2'
                    to targetPhysicalPort ::> 'Physical System'.'Right Hydraulic Brake Assembly'.'Right Reservior'.'Rider' {
                    @CapellaID { eid = "1e4f5d12-aff0-4f9e-930d-5dcc2d823bcb"; } 
                    attribute :>> interfaceName = "PL 10"; 
                     
                }  
                interface 'c6cf9420-03c7-43da-8f20-62d66b94bff7' : PhysicalLink 
                    connect sourcePhysicalPort ::> 'Rider'.'PP 3'
                    to targetPhysicalPort ::> 'Physical System'.'Left Hydraulic Brake Assembly'.'Left Reservior'.'Rider' {
                    @CapellaID { eid = "c6cf9420-03c7-43da-8f20-62d66b94bff7"; } 
                    attribute :>> interfaceName = "PL 11"; 
                     
                }  
                interface 'f9cb12e4-8ede-4ac2-90a7-d271ad6eb3b0' : PhysicalLink 
                    connect sourcePhysicalPort ::> 'Rider'.'PP 4'
                    to targetPhysicalPort ::> 'Physical System'.'Left Brake Lever'.'Rider' {
                    @CapellaID { eid = "f9cb12e4-8ede-4ac2-90a7-d271ad6eb3b0"; } 
                    attribute :>> interfaceName = "PL 12"; 
                }  
                interface 'e0c36ca7-0be5-435b-8dcd-c97288cdd61c' : PhysicalLink 
                    connect sourcePhysicalPort ::> 'Rider'.'PP 5'
                    to targetPhysicalPort ::> 'Physical System'.'Right Brake Lever'.'Rider' {
                    @CapellaID { eid = "e0c36ca7-0be5-435b-8dcd-c97288cdd61c"; } 
                    attribute :>> interfaceName = "PL 13"; 
                }  
                part '2ad210e5-5d42-45af-803f-4aa9eb478740' : CPart :> 'Physical System'  { 
                    @CapellaID { eid = "2ad210e5-5d42-45af-803f-4aa9eb478740"; } 
                    attribute :>> aggregationKind = AggregationKind::UNSET; 
                    attribute :>> isFinal = false; 
                    attribute :>> isAbstract = false; 
                    attribute :>> isDerived = false; 
                    attribute :>> isPartOfKey = false; 
                    attribute :>> isReadOnly = false; 
                    attribute :>> isStatic = false; 
                    attribute :>> isMaxInclusive = false; 
                    attribute :>> isMinInclusive = false; 
                    attribute :>> isOrdered = false; 
                    attribute :>> isUnique = false; 
                }  
                part 'cfb08e0b-e7cb-4b19-9101-f9cc6c28fbc5' : CPart :> 'Frame and Suspension'  { 
                    @CapellaID { eid = "cfb08e0b-e7cb-4b19-9101-f9cc6c28fbc5"; } 
                    attribute :>> aggregationKind = AggregationKind::UNSET; 
                    attribute :>> isFinal = false; 
                    attribute :>> isAbstract = false; 
                    attribute :>> isDerived = false; 
                    attribute :>> isPartOfKey = false; 
                    attribute :>> isReadOnly = false; 
                    attribute :>> isStatic = false; 
                    attribute :>> isMaxInclusive = false; 
                    attribute :>> isMinInclusive = false; 
                    attribute :>> isOrdered = false; 
                    attribute :>> isUnique = false; 
                }  
                part '1b34b488-15ca-4540-8f1c-6bcc9255e654' : CPart :> 'Wheels and Tires'  { 
                    @CapellaID { eid = "1b34b488-15ca-4540-8f1c-6bcc9255e654"; } 
                    attribute :>> aggregationKind = AggregationKind::UNSET; 
                    attribute :>> isFinal = false; 
                    attribute :>> isAbstract = false; 
                    attribute :>> isDerived = false; 
                    attribute :>> isPartOfKey = false; 
                    attribute :>> isReadOnly = false; 
                    attribute :>> isStatic = false; 
                    attribute :>> isMaxInclusive = false; 
                    attribute :>> isMinInclusive = false; 
                    attribute :>> isOrdered = false; 
                    attribute :>> isUnique = false; 
                }  
                part '5d3b4885-9c0d-4413-88b9-215bb20fa356' : CPart :> 'Cockpit'  { 
                    @CapellaID { eid = "5d3b4885-9c0d-4413-88b9-215bb20fa356"; } 
                    attribute :>> aggregationKind = AggregationKind::UNSET; 
                    attribute :>> isFinal = false; 
                    attribute :>> isAbstract = false; 
                    attribute :>> isDerived = false; 
                    attribute :>> isPartOfKey = false; 
                    attribute :>> isReadOnly = false; 
                    attribute :>> isStatic = false; 
                    attribute :>> isMaxInclusive = false; 
                    attribute :>> isMinInclusive = false; 
                    attribute :>> isOrdered = false; 
                    attribute :>> isUnique = false; 
                }  
                part 'dd44dd1b-d40e-4e57-9e73-606c69886c60' : CPart :> 'Environment'  { 
                    @CapellaID { eid = "dd44dd1b-d40e-4e57-9e73-606c69886c60"; } 
                    attribute :>> aggregationKind = AggregationKind::UNSET; 
                    attribute :>> isFinal = false; 
                    attribute :>> isAbstract = false; 
                    attribute :>> isDerived = false; 
                    attribute :>> isPartOfKey = false; 
                    attribute :>> isReadOnly = false; 
                    attribute :>> isStatic = false; 
                    attribute :>> isMaxInclusive = false; 
                    attribute :>> isMinInclusive = false; 
                    attribute :>> isOrdered = false; 
                    attribute :>> isUnique = false; 
                }  
                part '5092ef9d-3f22-4313-8858-540b3dc95e3f' : CPart :> 'Rider'  { 
                    @CapellaID { eid = "5092ef9d-3f22-4313-8858-540b3dc95e3f"; } 
                    attribute :>> aggregationKind = AggregationKind::UNSET; 
                    attribute :>> isFinal = false; 
                    attribute :>> isAbstract = false; 
                    attribute :>> isDerived = false; 
                    attribute :>> isPartOfKey = false; 
                    attribute :>> isReadOnly = false; 
                    attribute :>> isStatic = false; 
                    attribute :>> isMaxInclusive = false; 
                    attribute :>> isMinInclusive = false; 
                    attribute :>> isOrdered = false; 
                    attribute :>> isUnique = false; 
                }  
                interface '141c6425-5636-4f1a-a983-108fffa2f6c0' : ComponentExchange 
                    connect source ::> 'Physical System'.'CP 1'
                    to  target ::> 'Frame and Suspension'.'CP 1' { 
                    @CapellaID { eid = "141c6425-5636-4f1a-a983-108fffa2f6c0"; } 
                    attribute :>> kind = ComponentExchangeKind::FLOW; 
                    attribute :>> interfaceName = "Brake to BS"; 
                    attribute :>> isOriented = false; 
                     
                }  
                interface 'e2410fa7-6326-49be-a2d9-0febe01f033e' : ComponentExchange 
                    connect source ::> 'Physical System'.'CP 2'
                    to  target ::> 'Cockpit'.'CP 1' { 
                    @CapellaID { eid = "e2410fa7-6326-49be-a2d9-0febe01f033e"; } 
                    attribute :>> kind = ComponentExchangeKind::FLOW; 
                    attribute :>> interfaceName = "BS - C"; 
                    attribute :>> isOriented = false; 
                     
                }  
                interface '4295c6e2-67f1-40da-8d49-01fe774eb426' : ComponentExchange 
                    connect source ::> 'Physical System'.'CP 3'
                    to  target ::> 'Wheels and Tires'.'CP 1' { 
                    @CapellaID { eid = "4295c6e2-67f1-40da-8d49-01fe774eb426"; } 
                    attribute :>> kind = ComponentExchangeKind::FLOW; 
                    attribute :>> interfaceName = "BS to W"; 
                    attribute :>> isOriented = false; 
                     
                }  
                interface 'a64a1b2a-4069-41f3-8169-5fc03aa73d2a' : ComponentExchange 
                    connect source ::> 'Cockpit'.'CP 1'
                    to  target ::> 'Physical System'.'Control Subsystem'.'Left Lever'.'CP 2' { 
                    @CapellaID { eid = "a64a1b2a-4069-41f3-8169-5fc03aa73d2a"; } 
                    attribute :>> kind = ComponentExchangeKind::FLOW; 
                    attribute :>> interfaceName = "C 4"; 
                    attribute :>> isOriented = false; 
                    allocation '69c3c617-5df0-4703-828d-41e6b4b3fb84' : ComponentExchangeFunctionalExchangeAllocation
                        allocate functionalExchange ::> 'Physical Functions'::'Root Physical Function'.'750015e9-3fa7-4975-b4db-0a4d3c7853ae'
                        to componentExchange ::> 'Structure'::'a64a1b2a-4069-41f3-8169-5fc03aa73d2a' { 
                        @CapellaID { eid = "69c3c617-5df0-4703-828d-41e6b4b3fb84"; } 
                    }  
                    ref :>> ownedComponentExchangeFunctionalExchangeAllocations =  ('69c3c617-5df0-4703-828d-41e6b4b3fb84'); 
                }  
                interface 'e352d3d4-d14b-4557-a362-3e4e852cd271' : ComponentExchange 
                    connect source ::> 'Physical System'.'Break Actuation Subsystem '.'Front Rotor'.'CP 1'
                    to  target ::> 'Wheels and Tires'.'CP 1' { 
                    @CapellaID { eid = "e352d3d4-d14b-4557-a362-3e4e852cd271"; } 
                    attribute :>> kind = ComponentExchangeKind::FLOW; 
                    attribute :>> interfaceName = "C 5"; 
                    attribute :>> isOriented = false; 
                    allocation '5ee5b92d-3675-45f1-b027-1a82dc88736c' : ComponentExchangeFunctionalExchangeAllocation
                        allocate functionalExchange ::> 'Physical Functions'::'Root Physical Function'.'Provide Stopping'.'5a9d246f-8388-44ae-b373-e150a4e822a6'
                        to componentExchange ::> 'Structure'::'e352d3d4-d14b-4557-a362-3e4e852cd271' { 
                        @CapellaID { eid = "5ee5b92d-3675-45f1-b027-1a82dc88736c"; } 
                    }  
                    ref :>> ownedComponentExchangeFunctionalExchangeAllocations =  ('5ee5b92d-3675-45f1-b027-1a82dc88736c'); 
                }  
                interface '535d965c-c0d8-4155-aa63-7c0757f3bb7c' : ComponentExchange 
                    connect source ::> 'Cockpit'.'CP 1'
                    to  target ::> 'Physical System'.'Control Subsystem'.'Right level'.'CP 1' { 
                    @CapellaID { eid = "535d965c-c0d8-4155-aa63-7c0757f3bb7c"; } 
                    attribute :>> kind = ComponentExchangeKind::FLOW; 
                    attribute :>> interfaceName = "C 6"; 
                    attribute :>> isOriented = false; 
                    allocation 'e02dd3c0-4b40-4957-9775-64a0ea959dc3' : ComponentExchangeFunctionalExchangeAllocation
                        allocate functionalExchange ::> 'Physical Functions'::'Root Physical Function'.'b280653f-d17c-4abf-9253-cc14557b15fc'
                        to componentExchange ::> 'Structure'::'535d965c-c0d8-4155-aa63-7c0757f3bb7c' { 
                        @CapellaID { eid = "e02dd3c0-4b40-4957-9775-64a0ea959dc3"; } 
                    }  
                    ref :>> ownedComponentExchangeFunctionalExchangeAllocations =  ('e02dd3c0-4b40-4957-9775-64a0ea959dc3'); 
                }  
                interface '3f1c1005-9666-48e9-a270-a84daba77f26' : ComponentExchange 
                    connect source ::> 'Rider'.'CP 1'
                    to  target ::> 'Physical System'.'Control Subsystem'.'Right Resovior'.'CP 2' { 
                    @CapellaID { eid = "3f1c1005-9666-48e9-a270-a84daba77f26"; } 
                    attribute :>> kind = ComponentExchangeKind::FLOW; 
                    attribute :>> interfaceName = "C 7"; 
                    attribute :>> isOriented = false; 
                    allocation '40c688a1-9615-48c5-afb1-be538fe83a9f' : ComponentExchangeFunctionalExchangeAllocation
                        allocate functionalExchange ::> 'Physical Functions'::'Root Physical Function'.'31a21d13-7838-431e-a731-ece4100254a3'
                        to componentExchange ::> 'Structure'::'3f1c1005-9666-48e9-a270-a84daba77f26' { 
                        @CapellaID { eid = "40c688a1-9615-48c5-afb1-be538fe83a9f"; } 
                    }  
                    ref :>> ownedComponentExchangeFunctionalExchangeAllocations =  ('40c688a1-9615-48c5-afb1-be538fe83a9f'); 
                }  
                interface '6897803b-e2f1-468f-b89f-e897d09913a5' : ComponentExchange 
                    connect source ::> 'Rider'.'CP 1'
                    to  target ::> 'Physical System'.'Control Subsystem'.'Left Resovior'.'CP 2' { 
                    @CapellaID { eid = "6897803b-e2f1-468f-b89f-e897d09913a5"; } 
                    attribute :>> kind = ComponentExchangeKind::FLOW; 
                    attribute :>> interfaceName = "C 8"; 
                    attribute :>> isOriented = false; 
                }  
                interface 'c3174b9c-feab-406e-b4ae-0ee780b54412' : ComponentExchange 
                    connect source ::> 'Physical System'.'Break Actuation Subsystem '.'Rear Rotor'.'CP 3'
                    to  target ::> 'Wheels and Tires'.'CP 1' { 
                    @CapellaID { eid = "c3174b9c-feab-406e-b4ae-0ee780b54412"; } 
                    attribute :>> kind = ComponentExchangeKind::FLOW; 
                    attribute :>> interfaceName = "C 9"; 
                    attribute :>> isOriented = false; 
                    allocation '814227c8-92de-414f-973b-68e1116476c3' : ComponentExchangeFunctionalExchangeAllocation
                        allocate functionalExchange ::> 'Physical Functions'::'Root Physical Function'.'Provide Stopping'.'56903f47-249d-4c35-aef5-179a101b5b94'
                        to componentExchange ::> 'Structure'::'c3174b9c-feab-406e-b4ae-0ee780b54412' { 
                        @CapellaID { eid = "814227c8-92de-414f-973b-68e1116476c3"; } 
                    }  
                    ref :>> ownedComponentExchangeFunctionalExchangeAllocations =  ('814227c8-92de-414f-973b-68e1116476c3'); 
                }  
                interface 'eb38a57c-0a59-4419-bf6a-4cad3c8f5d33' : ComponentExchange 
                    connect source ::> 'Cockpit'.'CP 4'
                    to  target ::> 'Physical System'.'Control Subsystem'.'Support Left'.'CP 1' { 
                    @CapellaID { eid = "eb38a57c-0a59-4419-bf6a-4cad3c8f5d33"; } 
                    attribute :>> kind = ComponentExchangeKind::FLOW; 
                    attribute :>> interfaceName = "C 10"; 
                    attribute :>> isOriented = false; 
                    allocation '70bf426d-dace-4734-b489-d66f12e4eb70' : ComponentExchangeFunctionalExchangeAllocation
                        allocate functionalExchange ::> 'Physical Functions'::'Root Physical Function'.'5774f3bf-22b4-463d-a803-453d3a2a3fe8'
                        to componentExchange ::> 'Structure'::'eb38a57c-0a59-4419-bf6a-4cad3c8f5d33' { 
                        @CapellaID { eid = "70bf426d-dace-4734-b489-d66f12e4eb70"; } 
                    }  
                    ref :>> ownedComponentExchangeFunctionalExchangeAllocations =  ('70bf426d-dace-4734-b489-d66f12e4eb70'); 
                }  
                interface 'c5410ffc-22a0-420a-bf7a-ba999537ca1c' : ComponentExchange 
                    connect source ::> 'Cockpit'.'CP 5'
                    to  target ::> 'Physical System'.'Control Subsystem'.'Support Right'.'CP 1' { 
                    @CapellaID { eid = "c5410ffc-22a0-420a-bf7a-ba999537ca1c"; } 
                    attribute :>> kind = ComponentExchangeKind::FLOW; 
                    attribute :>> interfaceName = "C 11"; 
                    attribute :>> isOriented = false; 
                    allocation 'f7ea1966-3e62-4c0d-a982-c96d26f5aadf' : ComponentExchangeFunctionalExchangeAllocation
                        allocate functionalExchange ::> 'Physical Functions'::'Root Physical Function'.'544adc36-f23b-4c03-85d2-b013fe729090'
                        to componentExchange ::> 'Structure'::'c5410ffc-22a0-420a-bf7a-ba999537ca1c' { 
                        @CapellaID { eid = "f7ea1966-3e62-4c0d-a982-c96d26f5aadf"; } 
                    }  
                    ref :>> ownedComponentExchangeFunctionalExchangeAllocations =  ('f7ea1966-3e62-4c0d-a982-c96d26f5aadf'); 
                }  
                interface '87a7ddd3-7254-48cf-9fa6-ccda6e562a39' : ComponentExchange 
                    connect source ::> 'Frame and Suspension'.'CP 5'
                    to  target ::> 'Physical System'.'Force Transmission Subsystem'.'Rear Hydraulic Line'.'CP 3' { 
                    @CapellaID { eid = "87a7ddd3-7254-48cf-9fa6-ccda6e562a39"; } 
                    attribute :>> kind = ComponentExchangeKind::FLOW; 
                    attribute :>> interfaceName = "C 12"; 
                    attribute :>> isOriented = false; 
                    allocation 'a52fdfcc-6535-41b7-a6c4-cff8bdee75af' : ComponentExchangeFunctionalExchangeAllocation
                        allocate functionalExchange ::> 'Physical Functions'::'Root Physical Function'.'a7e608a2-ed67-4e3b-b889-6781f6976309'
                        to componentExchange ::> 'Structure'::'87a7ddd3-7254-48cf-9fa6-ccda6e562a39' { 
                        @CapellaID { eid = "a52fdfcc-6535-41b7-a6c4-cff8bdee75af"; } 
                    }  
                    ref :>> ownedComponentExchangeFunctionalExchangeAllocations =  ('a52fdfcc-6535-41b7-a6c4-cff8bdee75af'); 
                }  
                interface 'b35ac627-45b7-4173-9c6f-170b0fb0708b' : ComponentExchange 
                    connect source ::> 'Frame and Suspension'.'CP 6'
                    to  target ::> 'Physical System'.'Force Transmission Subsystem'.'Front Hydraulic Line'.'CP 3' { 
                    @CapellaID { eid = "b35ac627-45b7-4173-9c6f-170b0fb0708b"; } 
                    attribute :>> kind = ComponentExchangeKind::FLOW; 
                    attribute :>> interfaceName = "C 13"; 
                    attribute :>> isOriented = false; 
                    allocation '1e14435c-d9a3-4de8-b004-d5220811b276' : ComponentExchangeFunctionalExchangeAllocation
                        allocate functionalExchange ::> 'Physical Functions'::'Root Physical Function'.'0252f398-9b30-4da9-89f5-f950d62c50d1'
                        to componentExchange ::> 'Structure'::'b35ac627-45b7-4173-9c6f-170b0fb0708b' { 
                        @CapellaID { eid = "1e14435c-d9a3-4de8-b004-d5220811b276"; } 
                    }  
                    ref :>> ownedComponentExchangeFunctionalExchangeAllocations =  ('1e14435c-d9a3-4de8-b004-d5220811b276'); 
                }  
                interface '096154f9-0bf4-4e81-922b-f11ea46a2303' : ComponentExchange 
                    connect source ::> 'Frame and Suspension'.'CP 7'
                    to  target ::> 'Physical System'.'Break Actuation Subsystem '.'Rear Caliper'.'CP 4' { 
                    @CapellaID { eid = "096154f9-0bf4-4e81-922b-f11ea46a2303"; } 
                    attribute :>> kind = ComponentExchangeKind::FLOW; 
                    attribute :>> interfaceName = "C 14"; 
                    attribute :>> isOriented = false; 
                    allocation 'f8a2646a-d31c-42db-8541-2e36b6289215' : ComponentExchangeFunctionalExchangeAllocation
                        allocate functionalExchange ::> 'Physical Functions'::'Root Physical Function'.'afa54f56-1d6b-4081-9c93-06f59e51bc72'
                        to componentExchange ::> 'Structure'::'096154f9-0bf4-4e81-922b-f11ea46a2303' { 
                        @CapellaID { eid = "f8a2646a-d31c-42db-8541-2e36b6289215"; } 
                    }  
                    ref :>> ownedComponentExchangeFunctionalExchangeAllocations =  ('f8a2646a-d31c-42db-8541-2e36b6289215'); 
                }  
                interface 'c292e0a7-c616-4814-8aef-66fd65cc4bf2' : ComponentExchange 
                    connect source ::> 'Frame and Suspension'.'CP 8'
                    to  target ::> 'Physical System'.'Break Actuation Subsystem '.'Front Caliper'.'CP 4' { 
                    @CapellaID { eid = "c292e0a7-c616-4814-8aef-66fd65cc4bf2"; } 
                    attribute :>> kind = ComponentExchangeKind::FLOW; 
                    attribute :>> interfaceName = "C 15"; 
                    attribute :>> isOriented = false; 
                }  
                part 'Physical System' : PhysicalComponent { 
                    @CapellaID { eid = "f9db6448-0094-439d-89a6-24afc7fd5c0b"; } 
                    attribute :>> isAbstract = false; 
                    attribute :>> isActor = false; 
                    attribute :>> isHuman = false; 
                    attribute :>> kind = PhysicalComponentKind::UNSET; 
                    attribute :>> nature = PhysicalComponentNature::UNSET; 
                    interface 'becabdda-c646-47e7-9e65-c81df195f582' : ComponentExchange 
                        connect source ::> 'Control Subsystem'.'Left Piston'.'CP 3'
                        to  target ::> 'Force Transmission Subsystem'.'Front Hydraulic Line'.'CP 1' { 
                        @CapellaID { eid = "becabdda-c646-47e7-9e65-c81df195f582"; } 
                        attribute :>> kind = ComponentExchangeKind::FLOW; 
                        attribute :>> interfaceName = "C 1"; 
                        attribute :>> isOriented = false; 
                        allocation '93b77d4c-fb71-451f-b71d-3f779013bc29' : ComponentExchangeFunctionalExchangeAllocation
                            allocate functionalExchange ::> 'Physical Functions'::'Root Physical Function'.'Provide Stopping'.'0ead8d1e-cff5-435a-99f7-842f661bd9c7'
                            to componentExchange ::> 'becabdda-c646-47e7-9e65-c81df195f582' { 
                            @CapellaID { eid = "93b77d4c-fb71-451f-b71d-3f779013bc29"; } 
                        }  
                        ref :>> ownedComponentExchangeFunctionalExchangeAllocations =  ('93b77d4c-fb71-451f-b71d-3f779013bc29'); 
                    }  
                    interface 'e5a1bb48-0dac-4afa-a92d-33b302c5b2d0' : ComponentExchange 
                        connect source ::> 'Force Transmission Subsystem'.'Front Hydraulic Line'.'CP 2'
                        to  target ::> 'Break Actuation Subsystem '.'Front Caliper'.'CP 1' { 
                        @CapellaID { eid = "e5a1bb48-0dac-4afa-a92d-33b302c5b2d0"; } 
                        attribute :>> kind = ComponentExchangeKind::FLOW; 
                        attribute :>> interfaceName = "C 2"; 
                        attribute :>> isOriented = false; 
                        allocation '828b01a0-8718-4424-8c34-d1ca38b4f77d' : ComponentExchangeFunctionalExchangeAllocation
                            allocate functionalExchange ::> 'Physical Functions'::'Root Physical Function'.'Provide Stopping'.'b00df868-161f-49af-a1c9-a68c2fad0003'
                            to componentExchange ::> 'e5a1bb48-0dac-4afa-a92d-33b302c5b2d0' { 
                            @CapellaID { eid = "828b01a0-8718-4424-8c34-d1ca38b4f77d"; } 
                        }  
                        ref :>> ownedComponentExchangeFunctionalExchangeAllocations =  ('828b01a0-8718-4424-8c34-d1ca38b4f77d'); 
                    }  
                    interface '55ea3dfc-8479-4b79-95e7-e8077d832d66' : ComponentExchange 
                        connect source ::> 'Control Subsystem'.'Right Piston'.'CP 3'
                        to  target ::> 'Force Transmission Subsystem'.'Rear Hydraulic Line'.'CP 1' { 
                        doc /*
                        <p>This will be dedicated to Fluid</p>

                        */ 
                        @CapellaID { eid = "55ea3dfc-8479-4b79-95e7-e8077d832d66"; } 
                        attribute :>> kind = ComponentExchangeKind::FLOW; 
                        attribute :>> interfaceName = "C 3"; 
                        attribute :>> isOriented = false; 
                        allocation '50392d66-8d79-4d04-9835-46a84803e580' : ComponentExchangeFunctionalExchangeAllocation
                            allocate functionalExchange ::> 'Physical Functions'::'Root Physical Function'.'Provide Stopping'.'3efa0745-98a6-45df-afc5-407fc318896e'
                            to componentExchange ::> '55ea3dfc-8479-4b79-95e7-e8077d832d66' { 
                            @CapellaID { eid = "50392d66-8d79-4d04-9835-46a84803e580"; } 
                        }  
                        ref :>> ownedComponentExchangeFunctionalExchangeAllocations =  ('50392d66-8d79-4d04-9835-46a84803e580'); 
                    }  
                    interface 'd395d391-0252-4ab4-b55f-1811b84e1838' : ComponentExchange 
                        connect source ::> 'Force Transmission Subsystem'.'Rear Hydraulic Line'.'CP 2'
                        to  target ::> 'Break Actuation Subsystem '.'Rear Caliper'.'CP 1' { 
                        @CapellaID { eid = "d395d391-0252-4ab4-b55f-1811b84e1838"; } 
                        attribute :>> kind = ComponentExchangeKind::FLOW; 
                        attribute :>> interfaceName = "C 4"; 
                        attribute :>> isOriented = false; 
                        allocation '42fa8810-a5bb-4e3e-99f3-4017a6e51831' : ComponentExchangeFunctionalExchangeAllocation
                            allocate functionalExchange ::> 'Physical Functions'::'Root Physical Function'.'Provide Stopping'.'831291ae-5f9e-4271-9d02-4d652c19176e'
                            to componentExchange ::> 'd395d391-0252-4ab4-b55f-1811b84e1838' { 
                            @CapellaID { eid = "42fa8810-a5bb-4e3e-99f3-4017a6e51831"; } 
                        }  
                        ref :>> ownedComponentExchangeFunctionalExchangeAllocations =  ('42fa8810-a5bb-4e3e-99f3-4017a6e51831'); 
                    }  
                    interface '46e24a0c-d8ee-487e-8160-024d69668341' : PhysicalLink 
                        connect sourcePhysicalPort ::> 'Left Brake Lever'.'PP 1'
                        to targetPhysicalPort ::> 'Left Hydraulic Brake Assembly'.'Left Piston'.'PP 1' {
                        @CapellaID { eid = "46e24a0c-d8ee-487e-8160-024d69668341"; } 
                        attribute :>> interfaceName = "M"; 
                         
                    }  
                    interface '2ea369a6-abfe-4565-a541-b66ac4055fe8' : PhysicalLink 
                        connect sourcePhysicalPort ::> 'Left Hydraulic Brake Assembly'.'Left Reservior'.'PP 1'
                        to targetPhysicalPort ::> 'Left Hydraulic Brake Assembly'.'Left Piston'.'PP 2' {
                        @CapellaID { eid = "2ea369a6-abfe-4565-a541-b66ac4055fe8"; } 
                        attribute :>> interfaceName = "H"; 
                         
                    }  
                    interface '22862d0c-7acc-4444-991d-cd16b9d1554b' : PhysicalLink 
                        connect sourcePhysicalPort ::> 'Right Hydraulic Brake Assembly'.'Right Piston'.'PP 3_3'
                        to targetPhysicalPort ::> 'Rear Hydraulic Lines'.'PP 1' {
                        @CapellaID { eid = "22862d0c-7acc-4444-991d-cd16b9d1554b"; } 
                        attribute :>> interfaceName = "H-Brake Line"; 
                         
                    }  
                    interface '77c25458-2349-4285-85f4-d43c7b50420c' : PhysicalLink 
                        connect sourcePhysicalPort ::> 'PAD RL'.'PP 1'
                        to targetPhysicalPort ::> 'Rear Caliper'.'PP 2' {
                        @CapellaID { eid = "77c25458-2349-4285-85f4-d43c7b50420c"; } 
                        attribute :>> interfaceName = "PL 4"; 
                         
                    }  
                    interface '9fb2ff20-b0d7-4cb7-9c38-9571d44b3f0a' : PhysicalLink 
                        connect sourcePhysicalPort ::> 'Rear Caliper'.'PP 3'
                        to targetPhysicalPort ::> 'PAD RR'.'PP 1' {
                        @CapellaID { eid = "9fb2ff20-b0d7-4cb7-9c38-9571d44b3f0a"; } 
                        attribute :>> interfaceName = "PL 5"; 
                         
                    }  
                    interface '2e844365-ef34-4155-8be4-e294a67c1896' : PhysicalLink 
                        connect sourcePhysicalPort ::> 'Rear Rotor'.'PP 1'
                        to targetPhysicalPort ::> 'PAD RR'.'PP 2' {
                        @CapellaID { eid = "2e844365-ef34-4155-8be4-e294a67c1896"; } 
                        attribute :>> interfaceName = "PL 6"; 
                         
                    }  
                    interface 'c7e44972-58b9-4a63-be10-26fcbb2a9760' : PhysicalLink 
                        connect sourcePhysicalPort ::> 'PAD RL'.'PP 2'
                        to targetPhysicalPort ::> 'Rear Rotor'.'PP 2' {
                        @CapellaID { eid = "c7e44972-58b9-4a63-be10-26fcbb2a9760"; } 
                        attribute :>> interfaceName = "PL 7"; 
                         
                    }  
                    interface 'c33f4568-54fd-4810-9c48-00ee368176f8' : PhysicalLink 
                        connect sourcePhysicalPort ::> 'Electronic Brake Assembly'.'Controller '.'PP 4'
                        to targetPhysicalPort ::> 'Rear Caliper'.'Actuaor'.'PP 2' {
                        @CapellaID { eid = "c33f4568-54fd-4810-9c48-00ee368176f8"; } 
                        attribute :>> interfaceName = "E"; 
                    }  
                    interface 'fd0a665a-de26-4607-80c9-d326c9d1914d' : PhysicalLink 
                        connect sourcePhysicalPort ::> 'Brake Lever'.'PP 1'
                        to targetPhysicalPort ::> 'Electronic Brake Assembly'.'Sensor'.'PP 1' {
                        @CapellaID { eid = "fd0a665a-de26-4607-80c9-d326c9d1914d"; } 
                        attribute :>> interfaceName = "PL 9"; 
                    }  
                    interface '6f9ed8a9-2622-47ec-ba3d-cfedcb5204d9' : PhysicalLink 
                        connect sourcePhysicalPort ::> 'Rear Caliper'.'PP 3'
                        to targetPhysicalPort ::> 'Frame and Suspension'.'PP 1' {
                        @CapellaID { eid = "6f9ed8a9-2622-47ec-ba3d-cfedcb5204d9"; } 
                        attribute :>> interfaceName = "PL 11"; 
                    }  
                    interface '59a289c8-8070-4fda-b5f7-c77a1cce2bdc' : PhysicalLink 
                        connect sourcePhysicalPort ::> 'Rear Caliper'.'Frame'
                        to targetPhysicalPort ::> 'Frame and Suspension'.'PP 3' {
                        @CapellaID { eid = "59a289c8-8070-4fda-b5f7-c77a1cce2bdc"; } 
                        attribute :>> interfaceName = "PL 15"; 
                         
                    }  
                    interface '3ca16471-0f55-4d2e-a046-3eca19cf2020' : PhysicalLink 
                        connect sourcePhysicalPort ::> 'PAD FL'.'PP 1_1'
                        to targetPhysicalPort ::> 'Front Caliper'.'PP 2_1' {
                        @CapellaID { eid = "3ca16471-0f55-4d2e-a046-3eca19cf2020"; } 
                        attribute :>> interfaceName = "PL 4_1"; 
                         
                    }  
                    interface 'bf3f3ac7-6155-48f7-bf4f-57eb435fd4ad' : PhysicalLink 
                        connect sourcePhysicalPort ::> 'Front Caliper'.'PP 3_1'
                        to targetPhysicalPort ::> 'PAD FR'.'PP 1_1' {
                        @CapellaID { eid = "bf3f3ac7-6155-48f7-bf4f-57eb435fd4ad"; } 
                        attribute :>> interfaceName = "PL 5_1"; 
                         
                    }  
                    interface 'be24a500-cdc4-4c1a-8d94-c4738072e809' : PhysicalLink 
                        connect sourcePhysicalPort ::> 'Front Rotor'.'PP 1_1'
                        to targetPhysicalPort ::> 'PAD FR'.'PP 2_1' {
                        @CapellaID { eid = "be24a500-cdc4-4c1a-8d94-c4738072e809"; } 
                        attribute :>> interfaceName = "PL 6_1"; 
                    }  
                    interface 'd50c1c7c-0b40-43f0-8c55-6bbedfefefd7' : PhysicalLink 
                        connect sourcePhysicalPort ::> 'PAD FL'.'PP 2_1'
                        to targetPhysicalPort ::> 'Front Rotor'.'PP 2_1' {
                        @CapellaID { eid = "d50c1c7c-0b40-43f0-8c55-6bbedfefefd7"; } 
                        attribute :>> interfaceName = "PL 7_1"; 
                         
                    }  
                    interface '7165cde6-0e44-4fcb-8e46-57c29ac0ec90' : PhysicalLink 
                        connect sourcePhysicalPort ::> 'Brake Lever_2'.'PP 1_2'
                        to targetPhysicalPort ::> 'Hydraulic Brake Assembly_2'.'Piston_2'.'PP 1_2' {
                        @CapellaID { eid = "7165cde6-0e44-4fcb-8e46-57c29ac0ec90"; } 
                        attribute :>> interfaceName = "M_2"; 
                    }  
                    interface 'f0667139-734d-46d9-aa64-cb36d833f3b6' : PhysicalLink 
                        connect sourcePhysicalPort ::> 'Hydraulic Brake Assembly_2'.'Reservior_2'.'PP 1_2'
                        to targetPhysicalPort ::> 'Hydraulic Brake Assembly_2'.'Piston_2'.'PP 2_2' {
                        @CapellaID { eid = "f0667139-734d-46d9-aa64-cb36d833f3b6"; } 
                        attribute :>> interfaceName = "H_2"; 
                    }  
                    interface 'b744e40f-08f7-4f4e-ab8b-0e493c0ad166' : PhysicalLink 
                        connect sourcePhysicalPort ::> 'Rear Rotor'.'Wheel Tires'
                        to targetPhysicalPort ::> 'Rear Wheel Assembly'.'PP 1' {
                        @CapellaID { eid = "b744e40f-08f7-4f4e-ab8b-0e493c0ad166"; } 
                        attribute :>> interfaceName = "PL 25"; 
                    }  
                    interface '16d03cb6-314c-4c11-b08d-e20f1c2c85e6' : PhysicalLink 
                        connect sourcePhysicalPort ::> 'Front Rotor'.'PP 3'
                        to targetPhysicalPort ::> 'Front Wheel Assembly'.'PP 1' {
                        @CapellaID { eid = "16d03cb6-314c-4c11-b08d-e20f1c2c85e6"; } 
                        attribute :>> interfaceName = "PL 26"; 
                    }  
                    interface '52dedd33-fb79-4f5a-bd02-4d599c2ea8c2' : PhysicalLink 
                        connect sourcePhysicalPort ::> 'Right Brake Lever'.'PP 1_3'
                        to targetPhysicalPort ::> 'Right Hydraulic Brake Assembly'.'Right Piston'.'PP 1_3' {
                        @CapellaID { eid = "52dedd33-fb79-4f5a-bd02-4d599c2ea8c2"; } 
                        attribute :>> interfaceName = "M_3"; 
                         
                    }  
                    interface '8ae8f3f6-d7b3-4864-b163-96e00d76075f' : PhysicalLink 
                        connect sourcePhysicalPort ::> 'Right Hydraulic Brake Assembly'.'Right Reservior'.'PP 1_3'
                        to targetPhysicalPort ::> 'Right Hydraulic Brake Assembly'.'Right Piston'.'PP 2_3' {
                        @CapellaID { eid = "8ae8f3f6-d7b3-4864-b163-96e00d76075f"; } 
                        attribute :>> interfaceName = "H_3"; 
                    }  
                    interface '8dba6d57-f420-4903-9ad2-f50466db0516' : PhysicalLink 
                        connect sourcePhysicalPort ::> 'Left Hydraulic Brake Assembly'.'Left Piston'.'PP 3'
                        to targetPhysicalPort ::> 'Front Hydraulic Lines'.'PP 1_1' {
                        @CapellaID { eid = "8dba6d57-f420-4903-9ad2-f50466db0516"; } 
                        attribute :>> interfaceName = "PL 31"; 
                         
                    }  
                    interface '29e3a7bc-117a-43f5-aaad-ab78ef78aaaa' : PhysicalLink 
                        connect sourcePhysicalPort ::> 'Front Hydraulic Lines'.'PP 2'
                        to targetPhysicalPort ::> 'Front Caliper'.'PP 4' {
                        @CapellaID { eid = "29e3a7bc-117a-43f5-aaad-ab78ef78aaaa"; } 
                        attribute :>> interfaceName = "PL 30"; 
                         
                    }  
                    interface '73384cf1-5f15-4561-a5b0-8cb9cb80495d' : PhysicalLink 
                        connect sourcePhysicalPort ::> 'Rear Hydraulic Lines'.'PP 2'
                        to targetPhysicalPort ::> 'Rear Caliper'.'PP 5' {
                        @CapellaID { eid = "73384cf1-5f15-4561-a5b0-8cb9cb80495d"; } 
                        attribute :>> interfaceName = "PL 33"; 
                         
                    }  
                    part '9aef72d3-5275-4fa4-ab2d-6ffe930e5988' : CPart :> 'Control Subsystem'  { 
                        @CapellaID { eid = "9aef72d3-5275-4fa4-ab2d-6ffe930e5988"; } 
                        attribute :>> aggregationKind = AggregationKind::UNSET; 
                        attribute :>> isFinal = false; 
                        attribute :>> isAbstract = false; 
                        attribute :>> isDerived = false; 
                        attribute :>> isPartOfKey = false; 
                        attribute :>> isReadOnly = false; 
                        attribute :>> isStatic = false; 
                        attribute :>> isMaxInclusive = false; 
                        attribute :>> isMinInclusive = false; 
                        attribute :>> isOrdered = false; 
                        attribute :>> isUnique = false; 
                    }  
                    part '4710a12f-adbe-426e-910e-1152a7576fe3' : CPart :> 'Break Actuation Subsystem '  { 
                        @CapellaID { eid = "4710a12f-adbe-426e-910e-1152a7576fe3"; } 
                        attribute :>> aggregationKind = AggregationKind::UNSET; 
                        attribute :>> isFinal = false; 
                        attribute :>> isAbstract = false; 
                        attribute :>> isDerived = false; 
                        attribute :>> isPartOfKey = false; 
                        attribute :>> isReadOnly = false; 
                        attribute :>> isStatic = false; 
                        attribute :>> isMaxInclusive = false; 
                        attribute :>> isMinInclusive = false; 
                        attribute :>> isOrdered = false; 
                        attribute :>> isUnique = false; 
                    }  
                    part 'd6f49185-1a6e-46fa-a797-7d6693e60e5a' : CPart :> 'Force Transmission Subsystem'  { 
                        @CapellaID { eid = "d6f49185-1a6e-46fa-a797-7d6693e60e5a"; } 
                        attribute :>> aggregationKind = AggregationKind::UNSET; 
                        attribute :>> isFinal = false; 
                        attribute :>> isAbstract = false; 
                        attribute :>> isDerived = false; 
                        attribute :>> isPartOfKey = false; 
                        attribute :>> isReadOnly = false; 
                        attribute :>> isStatic = false; 
                        attribute :>> isMaxInclusive = false; 
                        attribute :>> isMinInclusive = false; 
                        attribute :>> isOrdered = false; 
                        attribute :>> isUnique = false; 
                    }  
                    part '6c2b7d84-23f4-4637-8ee5-0efa2c9c84cd' : CPart :> 'Feedback and Sensing'  { 
                        @CapellaID { eid = "6c2b7d84-23f4-4637-8ee5-0efa2c9c84cd"; } 
                        attribute :>> aggregationKind = AggregationKind::UNSET; 
                        attribute :>> isFinal = false; 
                        attribute :>> isAbstract = false; 
                        attribute :>> isDerived = false; 
                        attribute :>> isPartOfKey = false; 
                        attribute :>> isReadOnly = false; 
                        attribute :>> isStatic = false; 
                        attribute :>> isMaxInclusive = false; 
                        attribute :>> isMinInclusive = false; 
                        attribute :>> isOrdered = false; 
                        attribute :>> isUnique = false; 
                    }  
                    part '7c5c1f12-74ea-4483-b863-b90e7450831b' : CPart :> 'Left Brake Lever'  { 
                        @CapellaID { eid = "7c5c1f12-74ea-4483-b863-b90e7450831b"; } 
                        attribute :>> aggregationKind = AggregationKind::UNSET; 
                        attribute :>> isFinal = false; 
                        attribute :>> isAbstract = false; 
                        attribute :>> isDerived = false; 
                        attribute :>> isPartOfKey = false; 
                        attribute :>> isReadOnly = false; 
                        attribute :>> isStatic = false; 
                        attribute :>> isMaxInclusive = false; 
                        attribute :>> isMinInclusive = false; 
                        attribute :>> isOrdered = false; 
                        attribute :>> isUnique = false; 
                        allocation 'c450a083-677b-41d4-9c5d-8d07d2076aac' : PartDeploymentLink
                            allocate deployedElement ::> 'Control Subsystem'.'0221b024-a35c-4361-979d-5a5029fb41e3'
                            to location ::> 'Bike BrakeSystem Library Library'::'Bike BrakeSystem Library'::'Physical Architecture'::'Structure'::'Physical System'.'7c5c1f12-74ea-4483-b863-b90e7450831b' { 
                            @CapellaID { eid = "c450a083-677b-41d4-9c5d-8d07d2076aac"; } 
                        }  
                        ref :>> ownedDeploymentLinks =  ('c450a083-677b-41d4-9c5d-8d07d2076aac'); 
                    }  
                    part '071b7c49-431f-4f5e-b8cc-aaefce66a8bc' : CPart :> 'Rear Caliper'  { 
                        @CapellaID { eid = "071b7c49-431f-4f5e-b8cc-aaefce66a8bc"; } 
                        attribute :>> aggregationKind = AggregationKind::UNSET; 
                        attribute :>> isFinal = false; 
                        attribute :>> isAbstract = false; 
                        attribute :>> isDerived = false; 
                        attribute :>> isPartOfKey = false; 
                        attribute :>> isReadOnly = false; 
                        attribute :>> isStatic = false; 
                        attribute :>> isMaxInclusive = false; 
                        attribute :>> isMinInclusive = false; 
                        attribute :>> isOrdered = false; 
                        attribute :>> isUnique = false; 
                        allocation '8ae7750b-6bea-4d96-8429-59cf6806ae45' : PartDeploymentLink
                            allocate deployedElement ::> 'Break Actuation Subsystem '.'2913e4ec-3772-45b8-83b2-7fc1cb778db2'
                            to location ::> 'Bike BrakeSystem Library Library'::'Bike BrakeSystem Library'::'Physical Architecture'::'Structure'::'Physical System'.'071b7c49-431f-4f5e-b8cc-aaefce66a8bc' { 
                            @CapellaID { eid = "8ae7750b-6bea-4d96-8429-59cf6806ae45"; } 
                        }  
                        ref :>> ownedDeploymentLinks =  ('8ae7750b-6bea-4d96-8429-59cf6806ae45'); 
                    }  
                    part 'e8e5579f-b5e7-434c-b3e3-342d428a6bf7' : CPart :> 'Rear Rotor'  { 
                        @CapellaID { eid = "e8e5579f-b5e7-434c-b3e3-342d428a6bf7"; } 
                        attribute :>> aggregationKind = AggregationKind::UNSET; 
                        attribute :>> isFinal = false; 
                        attribute :>> isAbstract = false; 
                        attribute :>> isDerived = false; 
                        attribute :>> isPartOfKey = false; 
                        attribute :>> isReadOnly = false; 
                        attribute :>> isStatic = false; 
                        attribute :>> isMaxInclusive = false; 
                        attribute :>> isMinInclusive = false; 
                        attribute :>> isOrdered = false; 
                        attribute :>> isUnique = false; 
                        allocation 'da67aeff-f2f4-4310-96e2-e0beba3ce80e' : PartDeploymentLink
                            allocate deployedElement ::> 'Break Actuation Subsystem '.'23be4cf1-6a33-41c1-bb6e-b7c701469af1'
                            to location ::> 'Bike BrakeSystem Library Library'::'Bike BrakeSystem Library'::'Physical Architecture'::'Structure'::'Physical System'.'e8e5579f-b5e7-434c-b3e3-342d428a6bf7' { 
                            @CapellaID { eid = "da67aeff-f2f4-4310-96e2-e0beba3ce80e"; } 
                        }  
                        ref :>> ownedDeploymentLinks =  ('da67aeff-f2f4-4310-96e2-e0beba3ce80e'); 
                    }  
                    part '1662c6be-e4e2-4865-9d5a-7a1e35bd8bf7' : CPart :> 'PAD RL'  { 
                        @CapellaID { eid = "1662c6be-e4e2-4865-9d5a-7a1e35bd8bf7"; } 
                        attribute :>> aggregationKind = AggregationKind::UNSET; 
                        attribute :>> isFinal = false; 
                        attribute :>> isAbstract = false; 
                        attribute :>> isDerived = false; 
                        attribute :>> isPartOfKey = false; 
                        attribute :>> isReadOnly = false; 
                        attribute :>> isStatic = false; 
                        attribute :>> isMaxInclusive = false; 
                        attribute :>> isMinInclusive = false; 
                        attribute :>> isOrdered = false; 
                        attribute :>> isUnique = false; 
                        allocation 'f21a4be3-438d-4df4-8dc7-c8e6eb7aa1ef' : PartDeploymentLink
                            allocate deployedElement ::> 'Break Actuation Subsystem '.'76041b75-b3ad-47c9-9894-fc6fec802003'
                            to location ::> 'Bike BrakeSystem Library Library'::'Bike BrakeSystem Library'::'Physical Architecture'::'Structure'::'Physical System'.'1662c6be-e4e2-4865-9d5a-7a1e35bd8bf7' { 
                            @CapellaID { eid = "f21a4be3-438d-4df4-8dc7-c8e6eb7aa1ef"; } 
                        }  
                        ref :>> ownedDeploymentLinks =  ('f21a4be3-438d-4df4-8dc7-c8e6eb7aa1ef'); 
                    }  
                    part 'c7e4d3e7-5f78-4edb-a457-060427f29092' : CPart :> 'PAD RR'  { 
                        @CapellaID { eid = "c7e4d3e7-5f78-4edb-a457-060427f29092"; } 
                        attribute :>> aggregationKind = AggregationKind::UNSET; 
                        attribute :>> isFinal = false; 
                        attribute :>> isAbstract = false; 
                        attribute :>> isDerived = false; 
                        attribute :>> isPartOfKey = false; 
                        attribute :>> isReadOnly = false; 
                        attribute :>> isStatic = false; 
                        attribute :>> isMaxInclusive = false; 
                        attribute :>> isMinInclusive = false; 
                        attribute :>> isOrdered = false; 
                        attribute :>> isUnique = false; 
                        allocation '0f468da4-72ff-47f7-af05-faa923d3b500' : PartDeploymentLink
                            allocate deployedElement ::> 'Break Actuation Subsystem '.'48ca53d3-3117-43b6-ba87-56c6f6922fe6'
                            to location ::> 'Bike BrakeSystem Library Library'::'Bike BrakeSystem Library'::'Physical Architecture'::'Structure'::'Physical System'.'c7e4d3e7-5f78-4edb-a457-060427f29092' { 
                            @CapellaID { eid = "0f468da4-72ff-47f7-af05-faa923d3b500"; } 
                        }  
                        ref :>> ownedDeploymentLinks =  ('0f468da4-72ff-47f7-af05-faa923d3b500'); 
                    }  
                    part 'f28d1387-8a56-41ea-b459-f1b77da75264' : CPart :> 'Brake Lever'  { 
                        @CapellaID { eid = "f28d1387-8a56-41ea-b459-f1b77da75264"; } 
                        attribute :>> aggregationKind = AggregationKind::UNSET; 
                        attribute :>> isFinal = false; 
                        attribute :>> isAbstract = false; 
                        attribute :>> isDerived = false; 
                        attribute :>> isPartOfKey = false; 
                        attribute :>> isReadOnly = false; 
                        attribute :>> isStatic = false; 
                        attribute :>> isMaxInclusive = false; 
                        attribute :>> isMinInclusive = false; 
                        attribute :>> isOrdered = false; 
                        attribute :>> isUnique = false; 
                    }  
                    part '36143f57-852d-4b76-87ed-fea95e6e97ee' : CPart :> 'Rear Caliper'  { 
                        @CapellaID { eid = "36143f57-852d-4b76-87ed-fea95e6e97ee"; } 
                        attribute :>> aggregationKind = AggregationKind::UNSET; 
                        attribute :>> isFinal = false; 
                        attribute :>> isAbstract = false; 
                        attribute :>> isDerived = false; 
                        attribute :>> isPartOfKey = false; 
                        attribute :>> isReadOnly = false; 
                        attribute :>> isStatic = false; 
                        attribute :>> isMaxInclusive = false; 
                        attribute :>> isMinInclusive = false; 
                        attribute :>> isOrdered = false; 
                        attribute :>> isUnique = false; 
                    }  
                    part '0920d0c5-a1aa-4384-a75f-c3942d4e03e9' : CPart :> 'Electronic Brake Assembly'  { 
                        @CapellaID { eid = "0920d0c5-a1aa-4384-a75f-c3942d4e03e9"; } 
                        attribute :>> aggregationKind = AggregationKind::UNSET; 
                        attribute :>> isFinal = false; 
                        attribute :>> isAbstract = false; 
                        attribute :>> isDerived = false; 
                        attribute :>> isPartOfKey = false; 
                        attribute :>> isReadOnly = false; 
                        attribute :>> isStatic = false; 
                        attribute :>> isMaxInclusive = false; 
                        attribute :>> isMinInclusive = false; 
                        attribute :>> isOrdered = false; 
                        attribute :>> isUnique = false; 
                    }  
                    part '740667f0-14f5-4e7f-a261-9e1d05469b29' : CPart :> 'Handle Bars'  { 
                        @CapellaID { eid = "740667f0-14f5-4e7f-a261-9e1d05469b29"; } 
                        attribute :>> aggregationKind = AggregationKind::UNSET; 
                        attribute :>> isFinal = false; 
                        attribute :>> isAbstract = false; 
                        attribute :>> isDerived = false; 
                        attribute :>> isPartOfKey = false; 
                        attribute :>> isReadOnly = false; 
                        attribute :>> isStatic = false; 
                        attribute :>> isMaxInclusive = false; 
                        attribute :>> isMinInclusive = false; 
                        attribute :>> isOrdered = false; 
                        attribute :>> isUnique = false; 
                    }  
                    part 'dc25d301-3310-451f-b902-5919649764c4' : CPart :> 'Left Hydraulic Brake Assembly'  { 
                        @CapellaID { eid = "dc25d301-3310-451f-b902-5919649764c4"; } 
                        attribute :>> aggregationKind = AggregationKind::UNSET; 
                        attribute :>> isFinal = false; 
                        attribute :>> isAbstract = false; 
                        attribute :>> isDerived = false; 
                        attribute :>> isPartOfKey = false; 
                        attribute :>> isReadOnly = false; 
                        attribute :>> isStatic = false; 
                        attribute :>> isMaxInclusive = false; 
                        attribute :>> isMinInclusive = false; 
                        attribute :>> isOrdered = false; 
                        attribute :>> isUnique = false; 
                        allocation 'b7778585-539c-4bee-8655-d8f83103394d' : PartDeploymentLink
                            allocate deployedElement ::> 'Control Subsystem'.'45777470-aa7d-458e-9553-9674e03a4c69'
                            to location ::> 'Bike BrakeSystem Library Library'::'Bike BrakeSystem Library'::'Physical Architecture'::'Structure'::'Physical System'.'dc25d301-3310-451f-b902-5919649764c4' { 
                            @CapellaID { eid = "b7778585-539c-4bee-8655-d8f83103394d"; } 
                        }  
                        ref :>> ownedDeploymentLinks =  ('b7778585-539c-4bee-8655-d8f83103394d'); 
                    }  
                    part 'ca17e5f4-2ce5-4339-8127-383dbae3c38a' : CPart :> 'Front Caliper'  { 
                        @CapellaID { eid = "ca17e5f4-2ce5-4339-8127-383dbae3c38a"; } 
                        attribute :>> aggregationKind = AggregationKind::UNSET; 
                        attribute :>> isFinal = false; 
                        attribute :>> isAbstract = false; 
                        attribute :>> isDerived = false; 
                        attribute :>> isPartOfKey = false; 
                        attribute :>> isReadOnly = false; 
                        attribute :>> isStatic = false; 
                        attribute :>> isMaxInclusive = false; 
                        attribute :>> isMinInclusive = false; 
                        attribute :>> isOrdered = false; 
                        attribute :>> isUnique = false; 
                        allocation '05d8bbcb-750d-40d9-aa84-d3b3df775f21' : PartDeploymentLink
                            allocate deployedElement ::> 'Break Actuation Subsystem '.'5c5b2b0e-3a4e-4a9b-a7d6-3d17b41490f8'
                            to location ::> 'Bike BrakeSystem Library Library'::'Bike BrakeSystem Library'::'Physical Architecture'::'Structure'::'Physical System'.'ca17e5f4-2ce5-4339-8127-383dbae3c38a' { 
                            @CapellaID { eid = "05d8bbcb-750d-40d9-aa84-d3b3df775f21"; } 
                        }  
                        ref :>> ownedDeploymentLinks =  ('05d8bbcb-750d-40d9-aa84-d3b3df775f21'); 
                    }  
                    part 'b5ba4c87-852f-492d-871e-f2530168dd4c' : CPart :> 'Front Rotor'  { 
                        @CapellaID { eid = "b5ba4c87-852f-492d-871e-f2530168dd4c"; } 
                        attribute :>> aggregationKind = AggregationKind::UNSET; 
                        attribute :>> isFinal = false; 
                        attribute :>> isAbstract = false; 
                        attribute :>> isDerived = false; 
                        attribute :>> isPartOfKey = false; 
                        attribute :>> isReadOnly = false; 
                        attribute :>> isStatic = false; 
                        attribute :>> isMaxInclusive = false; 
                        attribute :>> isMinInclusive = false; 
                        attribute :>> isOrdered = false; 
                        attribute :>> isUnique = false; 
                        allocation '4ff9d450-37de-4ee4-9844-d0402b72a125' : PartDeploymentLink
                            allocate deployedElement ::> 'Break Actuation Subsystem '.'b14b7782-a053-41f6-9430-4445ea3458f3'
                            to location ::> 'Bike BrakeSystem Library Library'::'Bike BrakeSystem Library'::'Physical Architecture'::'Structure'::'Physical System'.'b5ba4c87-852f-492d-871e-f2530168dd4c' { 
                            @CapellaID { eid = "4ff9d450-37de-4ee4-9844-d0402b72a125"; } 
                        }  
                        ref :>> ownedDeploymentLinks =  ('4ff9d450-37de-4ee4-9844-d0402b72a125'); 
                    }  
                    part '60546210-22dc-45b7-853c-c536193deb28' : CPart :> 'PAD FL'  { 
                        @CapellaID { eid = "60546210-22dc-45b7-853c-c536193deb28"; } 
                        attribute :>> aggregationKind = AggregationKind::UNSET; 
                        attribute :>> isFinal = false; 
                        attribute :>> isAbstract = false; 
                        attribute :>> isDerived = false; 
                        attribute :>> isPartOfKey = false; 
                        attribute :>> isReadOnly = false; 
                        attribute :>> isStatic = false; 
                        attribute :>> isMaxInclusive = false; 
                        attribute :>> isMinInclusive = false; 
                        attribute :>> isOrdered = false; 
                        attribute :>> isUnique = false; 
                        allocation '80bdc9fe-7e35-419c-8169-bb77df99540a' : PartDeploymentLink
                            allocate deployedElement ::> 'Break Actuation Subsystem '.'600a1858-f4dd-4d21-9f30-aa26de19d21c'
                            to location ::> 'Bike BrakeSystem Library Library'::'Bike BrakeSystem Library'::'Physical Architecture'::'Structure'::'Physical System'.'60546210-22dc-45b7-853c-c536193deb28' { 
                            @CapellaID { eid = "80bdc9fe-7e35-419c-8169-bb77df99540a"; } 
                        }  
                        ref :>> ownedDeploymentLinks =  ('80bdc9fe-7e35-419c-8169-bb77df99540a'); 
                    }  
                    part '07ac1f2c-cd29-46e0-abb1-e0a9a685242d' : CPart :> 'PAD FR'  { 
                        @CapellaID { eid = "07ac1f2c-cd29-46e0-abb1-e0a9a685242d"; } 
                        attribute :>> aggregationKind = AggregationKind::UNSET; 
                        attribute :>> isFinal = false; 
                        attribute :>> isAbstract = false; 
                        attribute :>> isDerived = false; 
                        attribute :>> isPartOfKey = false; 
                        attribute :>> isReadOnly = false; 
                        attribute :>> isStatic = false; 
                        attribute :>> isMaxInclusive = false; 
                        attribute :>> isMinInclusive = false; 
                        attribute :>> isOrdered = false; 
                        attribute :>> isUnique = false; 
                        allocation '038f648a-8735-4aed-9e0d-78781ba70861' : PartDeploymentLink
                            allocate deployedElement ::> 'Break Actuation Subsystem '.'49098fc0-a745-4266-8374-483f4f9ea64a'
                            to location ::> 'Bike BrakeSystem Library Library'::'Bike BrakeSystem Library'::'Physical Architecture'::'Structure'::'Physical System'.'07ac1f2c-cd29-46e0-abb1-e0a9a685242d' { 
                            @CapellaID { eid = "038f648a-8735-4aed-9e0d-78781ba70861"; } 
                        }  
                        ref :>> ownedDeploymentLinks =  ('038f648a-8735-4aed-9e0d-78781ba70861'); 
                    }  
                    part 'bfc57890-8aca-4dbd-9fa5-0779f49414d7' : CPart :> 'Brake Lever_2'  { 
                        @CapellaID { eid = "bfc57890-8aca-4dbd-9fa5-0779f49414d7"; } 
                        attribute :>> aggregationKind = AggregationKind::UNSET; 
                        attribute :>> isFinal = false; 
                        attribute :>> isAbstract = false; 
                        attribute :>> isDerived = false; 
                        attribute :>> isPartOfKey = false; 
                        attribute :>> isReadOnly = false; 
                        attribute :>> isStatic = false; 
                        attribute :>> isMaxInclusive = false; 
                        attribute :>> isMinInclusive = false; 
                        attribute :>> isOrdered = false; 
                        attribute :>> isUnique = false; 
                    }  
                    part 'da0c221c-7c75-4aca-9935-5cd9d6e78be5' : CPart :> 'Hydraulic Brake Assembly_2'  { 
                        @CapellaID { eid = "da0c221c-7c75-4aca-9935-5cd9d6e78be5"; } 
                        attribute :>> aggregationKind = AggregationKind::UNSET; 
                        attribute :>> isFinal = false; 
                        attribute :>> isAbstract = false; 
                        attribute :>> isDerived = false; 
                        attribute :>> isPartOfKey = false; 
                        attribute :>> isReadOnly = false; 
                        attribute :>> isStatic = false; 
                        attribute :>> isMaxInclusive = false; 
                        attribute :>> isMinInclusive = false; 
                        attribute :>> isOrdered = false; 
                        attribute :>> isUnique = false; 
                    }  
                    part '77b99437-9312-412b-8398-ea2c7ae0d618' : CPart :> 'Rear Wheel Assembly'  { 
                        @CapellaID { eid = "77b99437-9312-412b-8398-ea2c7ae0d618"; } 
                        attribute :>> aggregationKind = AggregationKind::UNSET; 
                        attribute :>> isFinal = false; 
                        attribute :>> isAbstract = false; 
                        attribute :>> isDerived = false; 
                        attribute :>> isPartOfKey = false; 
                        attribute :>> isReadOnly = false; 
                        attribute :>> isStatic = false; 
                        attribute :>> isMaxInclusive = false; 
                        attribute :>> isMinInclusive = false; 
                        attribute :>> isOrdered = false; 
                        attribute :>> isUnique = false; 
                    }  
                    part '72eab043-4df3-4947-ade6-c25325030863' : CPart :> 'Front Wheel Assembly'  { 
                        @CapellaID { eid = "72eab043-4df3-4947-ade6-c25325030863"; } 
                        attribute :>> aggregationKind = AggregationKind::UNSET; 
                        attribute :>> isFinal = false; 
                        attribute :>> isAbstract = false; 
                        attribute :>> isDerived = false; 
                        attribute :>> isPartOfKey = false; 
                        attribute :>> isReadOnly = false; 
                        attribute :>> isStatic = false; 
                        attribute :>> isMaxInclusive = false; 
                        attribute :>> isMinInclusive = false; 
                        attribute :>> isOrdered = false; 
                        attribute :>> isUnique = false; 
                    }  
                    part '34f173bd-e052-40c7-b211-ff0f2b13615f' : CPart :> 'Right Brake Lever'  { 
                        @CapellaID { eid = "34f173bd-e052-40c7-b211-ff0f2b13615f"; } 
                        attribute :>> aggregationKind = AggregationKind::UNSET; 
                        attribute :>> isFinal = false; 
                        attribute :>> isAbstract = false; 
                        attribute :>> isDerived = false; 
                        attribute :>> isPartOfKey = false; 
                        attribute :>> isReadOnly = false; 
                        attribute :>> isStatic = false; 
                        attribute :>> isMaxInclusive = false; 
                        attribute :>> isMinInclusive = false; 
                        attribute :>> isOrdered = false; 
                        attribute :>> isUnique = false; 
                        allocation '08ec7aaf-5463-40c5-8027-ef084aca7290' : PartDeploymentLink
                            allocate deployedElement ::> 'Control Subsystem'.'d1dd7dbe-a88e-4ef7-9bb4-18ff6d26be19'
                            to location ::> 'Bike BrakeSystem Library Library'::'Bike BrakeSystem Library'::'Physical Architecture'::'Structure'::'Physical System'.'34f173bd-e052-40c7-b211-ff0f2b13615f' { 
                            @CapellaID { eid = "08ec7aaf-5463-40c5-8027-ef084aca7290"; } 
                        }  
                        ref :>> ownedDeploymentLinks =  ('08ec7aaf-5463-40c5-8027-ef084aca7290'); 
                    }  
                    part '0f1bff95-fd8a-4da0-a8d4-124f47d34479' : CPart :> 'Right Hydraulic Brake Assembly'  { 
                        @CapellaID { eid = "0f1bff95-fd8a-4da0-a8d4-124f47d34479"; } 
                        attribute :>> aggregationKind = AggregationKind::UNSET; 
                        attribute :>> isFinal = false; 
                        attribute :>> isAbstract = false; 
                        attribute :>> isDerived = false; 
                        attribute :>> isPartOfKey = false; 
                        attribute :>> isReadOnly = false; 
                        attribute :>> isStatic = false; 
                        attribute :>> isMaxInclusive = false; 
                        attribute :>> isMinInclusive = false; 
                        attribute :>> isOrdered = false; 
                        attribute :>> isUnique = false; 
                        allocation '32fda60d-5ce8-4277-b9a7-bc9890a767fa' : PartDeploymentLink
                            allocate deployedElement ::> 'Control Subsystem'.'216e7945-2f72-4ba6-ad86-896a50dfd778'
                            to location ::> 'Bike BrakeSystem Library Library'::'Bike BrakeSystem Library'::'Physical Architecture'::'Structure'::'Physical System'.'0f1bff95-fd8a-4da0-a8d4-124f47d34479' { 
                            @CapellaID { eid = "32fda60d-5ce8-4277-b9a7-bc9890a767fa"; } 
                        }  
                        ref :>> ownedDeploymentLinks =  ('32fda60d-5ce8-4277-b9a7-bc9890a767fa'); 
                    }  
                    port 'CP 1' : ComponentPort { 
                        @CapellaID { eid = "0ea8f8f6-b103-4445-a9a4-f3d1d1e90db9"; } 
                        attribute :>> aggregationKind = AggregationKind::UNSET; 
                        attribute :>> isFinal = false; 
                        attribute :>> isAbstract = false; 
                        attribute :>> isDerived = false; 
                        attribute :>> isPartOfKey = false; 
                        attribute :>> isReadOnly = false; 
                        attribute :>> isStatic = false; 
                        attribute :>> kind = ComponentPortKind::FLOW; 
                        attribute :>> isMaxInclusive = false; 
                        attribute :>> isMinInclusive = false; 
                        attribute :>> isOrdered = false; 
                        attribute :>> orientation = OrientationPortKind::INOUT; 
                        attribute :>> isUnique = false; 
                         
                    }  
                    port 'CP 2' : ComponentPort { 
                        @CapellaID { eid = "b53cf720-3c68-40b9-8f4c-34f4c1d1cdee"; } 
                        attribute :>> aggregationKind = AggregationKind::UNSET; 
                        attribute :>> isFinal = false; 
                        attribute :>> isAbstract = false; 
                        attribute :>> isDerived = false; 
                        attribute :>> isPartOfKey = false; 
                        attribute :>> isReadOnly = false; 
                        attribute :>> isStatic = false; 
                        attribute :>> kind = ComponentPortKind::FLOW; 
                        attribute :>> isMaxInclusive = false; 
                        attribute :>> isMinInclusive = false; 
                        attribute :>> isOrdered = false; 
                        attribute :>> orientation = OrientationPortKind::INOUT; 
                        attribute :>> isUnique = false; 
                         
                    }  
                    port 'CP 3' : ComponentPort { 
                        @CapellaID { eid = "0063a9f1-4866-43b7-b11e-bc30646e1d32"; } 
                        attribute :>> aggregationKind = AggregationKind::UNSET; 
                        attribute :>> isFinal = false; 
                        attribute :>> isAbstract = false; 
                        attribute :>> isDerived = false; 
                        attribute :>> isPartOfKey = false; 
                        attribute :>> isReadOnly = false; 
                        attribute :>> isStatic = false; 
                        attribute :>> kind = ComponentPortKind::FLOW; 
                        attribute :>> isMaxInclusive = false; 
                        attribute :>> isMinInclusive = false; 
                        attribute :>> isOrdered = false; 
                        attribute :>> orientation = OrientationPortKind::INOUT; 
                        attribute :>> isUnique = false; 
                         
                    }  
                    part '41acaea1-9617-4e6a-8657-3069c64c329b' : CPart :> 'Front Hydraulic Lines'  { 
                        @CapellaID { eid = "41acaea1-9617-4e6a-8657-3069c64c329b"; } 
                        attribute :>> aggregationKind = AggregationKind::UNSET; 
                        attribute :>> isFinal = false; 
                        attribute :>> isAbstract = false; 
                        attribute :>> isDerived = false; 
                        attribute :>> isPartOfKey = false; 
                        attribute :>> isReadOnly = false; 
                        attribute :>> isStatic = false; 
                        attribute :>> isMaxInclusive = false; 
                        attribute :>> isMinInclusive = false; 
                        attribute :>> isOrdered = false; 
                        attribute :>> isUnique = false; 
                        allocation 'ef34c68e-cf5d-44a5-a584-53be50dfa0b5' : PartDeploymentLink
                            allocate deployedElement ::> 'Force Transmission Subsystem'.'08080937-e02d-451f-833f-47a969aaa5e8'
                            to location ::> 'Bike BrakeSystem Library Library'::'Bike BrakeSystem Library'::'Physical Architecture'::'Structure'::'Physical System'.'41acaea1-9617-4e6a-8657-3069c64c329b' { 
                            @CapellaID { eid = "ef34c68e-cf5d-44a5-a584-53be50dfa0b5"; } 
                        }  
                        ref :>> ownedDeploymentLinks =  ('ef34c68e-cf5d-44a5-a584-53be50dfa0b5'); 
                    }  
                    part 'd8f169f1-52f4-4ae1-9013-fc45d0c4f1dd' : CPart :> 'Rear Hydraulic Lines'  { 
                        @CapellaID { eid = "d8f169f1-52f4-4ae1-9013-fc45d0c4f1dd"; } 
                        attribute :>> aggregationKind = AggregationKind::UNSET; 
                        attribute :>> isFinal = false; 
                        attribute :>> isAbstract = false; 
                        attribute :>> isDerived = false; 
                        attribute :>> isPartOfKey = false; 
                        attribute :>> isReadOnly = false; 
                        attribute :>> isStatic = false; 
                        attribute :>> isMaxInclusive = false; 
                        attribute :>> isMinInclusive = false; 
                        attribute :>> isOrdered = false; 
                        attribute :>> isUnique = false; 
                        allocation '3ef79fb5-513c-4ace-8d20-4079d9178858' : PartDeploymentLink
                            allocate deployedElement ::> 'Force Transmission Subsystem'.'6af0adc7-7bea-41f6-bcb2-fd614f8fe036'
                            to location ::> 'Bike BrakeSystem Library Library'::'Bike BrakeSystem Library'::'Physical Architecture'::'Structure'::'Physical System'.'d8f169f1-52f4-4ae1-9013-fc45d0c4f1dd' { 
                            @CapellaID { eid = "3ef79fb5-513c-4ace-8d20-4079d9178858"; } 
                        }  
                        ref :>> ownedDeploymentLinks =  ('3ef79fb5-513c-4ace-8d20-4079d9178858'); 
                    }  
                    dependency 'f494e2b7-38e1-4d82-a6e3-a8613f228cd3'
                        from '9aef72d3-5275-4fa4-ab2d-6ffe930e5988'
                        to  'Logical Architecture'::'Structure'::'Braking System'::'ed265c96-8211-45e1-a1eb-d0294af68612' { 
                        @TransfoLink { 
                            @CapellaID { eid = "f494e2b7-38e1-4d82-a6e3-a8613f228cd3"; } 
                        }  
                    }  
                    dependency '61267da1-8df5-4ea1-bf76-2e9b561f6507'
                        from '4710a12f-adbe-426e-910e-1152a7576fe3'
                        to  'Logical Architecture'::'Structure'::'Braking System'::'0f993d44-deee-413d-bb2f-0b76c3bf7cab' { 
                        @TransfoLink { 
                            @CapellaID { eid = "61267da1-8df5-4ea1-bf76-2e9b561f6507"; } 
                        }  
                    }  
                    dependency '568cc9c5-9399-445b-9a4b-188ebe608de1'
                        from 'd6f49185-1a6e-46fa-a797-7d6693e60e5a'
                        to  'Logical Architecture'::'Structure'::'Braking System'::'e00ba5fa-3b9e-4eb0-9bd1-73b4f158e20b' { 
                        @TransfoLink { 
                            @CapellaID { eid = "568cc9c5-9399-445b-9a4b-188ebe608de1"; } 
                        }  
                    }  
                    dependency '4dd1cc95-f384-4bb9-a9c4-7cfbe0fa17a0'
                        from '6c2b7d84-23f4-4637-8ee5-0efa2c9c84cd'
                        to  'Logical Architecture'::'Structure'::'Braking System'::'6c09ed48-23d9-4499-9062-fdb65eca7b44' { 
                        @TransfoLink { 
                            @CapellaID { eid = "4dd1cc95-f384-4bb9-a9c4-7cfbe0fa17a0"; } 
                        }  
                    }  
                    part 'Control Subsystem' : PhysicalComponent { 
                        doc /*
                        <p>Example elements:</p>

                        <ul>
                        	<li>Brake lever</li>
                        	<li>Hydraulic actuator input</li>
                        	<li>Mechanical cable anchor</li>
                        </ul>

                        */ 
                        @CapellaID { eid = "93f1cc8a-32e7-47df-abca-9c875ed787c8"; } 
                        attribute :>> isAbstract = false; 
                        attribute :>> isActor = false; 
                        attribute :>> isHuman = false; 
                        attribute :>> kind = PhysicalComponentKind::UNSET; 
                        attribute :>> nature = PhysicalComponentNature::BEHAVIOR; 
                        allocation '970c259c-8edf-44cf-8278-7a6fbe7f545f' : ComponentFunctionalAllocation
                            allocate function ::> 'Physical Functions'::'Root Physical Function'.'Provide Stopping'.'Translate Mechanical Action to Signal'
                            to component ::> 'Control Subsystem' { 
                            @CapellaID { eid = "970c259c-8edf-44cf-8278-7a6fbe7f545f"; } 
                        } 
                        perform 'Physical Functions'::'Root Physical Function'.'Provide Stopping'.'Translate Mechanical Action to Signal' ; 
                        allocation 'e7f90c6d-4173-4743-9ff4-1c26ea9c8569' : ComponentFunctionalAllocation
                            allocate function ::> 'Physical Functions'::'Root Physical Function'.'Provide Stopping'.'Tranmit Signal'
                            to component ::> 'Control Subsystem' { 
                            @CapellaID { eid = "e7f90c6d-4173-4743-9ff4-1c26ea9c8569"; } 
                        } 
                        perform 'Physical Functions'::'Root Physical Function'.'Provide Stopping'.'Tranmit Signal' ; 
                        allocation '2cf367eb-478b-491a-814b-27fffd465e92' : ComponentFunctionalAllocation
                            allocate function ::> 'Physical Functions'::'Root Physical Function'.'Receieve Environment'
                            to component ::> 'Control Subsystem' { 
                            @CapellaID { eid = "2cf367eb-478b-491a-814b-27fffd465e92"; } 
                        } 
                        perform 'Physical Functions'::'Root Physical Function'.'Receieve Environment' ; 
                        interface '5e8e4ffc-7473-4fe9-b146-4d7050bef280' : ComponentExchange 
                            connect source ::> 'Left Lever'.'CP 1'
                            to  target ::> 'Left Piston'.'CP 1' { 
                            @CapellaID { eid = "5e8e4ffc-7473-4fe9-b146-4d7050bef280"; } 
                            attribute :>> kind = ComponentExchangeKind::FLOW; 
                            attribute :>> interfaceName = "C 1"; 
                            attribute :>> isOriented = false; 
                            allocation '25c3400c-64e6-4e33-bb66-e4b3c356d5ea' : ComponentExchangeFunctionalExchangeAllocation
                                allocate functionalExchange ::> 'Physical Functions'::'Root Physical Function'.'Provide Stopping'.'7e92428b-766c-4404-b3c6-0658f5673911'
                                to componentExchange ::> '5e8e4ffc-7473-4fe9-b146-4d7050bef280' { 
                                @CapellaID { eid = "25c3400c-64e6-4e33-bb66-e4b3c356d5ea"; } 
                            }  
                            ref :>> ownedComponentExchangeFunctionalExchangeAllocations =  ('25c3400c-64e6-4e33-bb66-e4b3c356d5ea'); 
                        }  
                        interface '5ce29749-067d-4884-af2a-1725f9542e72' : ComponentExchange 
                            connect source ::> 'Left Resovior'.'CP 1'
                            to  target ::> 'Left Piston'.'CP 2' { 
                            @CapellaID { eid = "5ce29749-067d-4884-af2a-1725f9542e72"; } 
                            attribute :>> kind = ComponentExchangeKind::FLOW; 
                            attribute :>> interfaceName = "C 2"; 
                            attribute :>> isOriented = false; 
                            allocation '0ba47383-c501-4ed5-b738-7734f469437a' : ComponentExchangeFunctionalExchangeAllocation
                                allocate functionalExchange ::> 'Physical Functions'::'Root Physical Function'.'Provide Stopping'.'Modulate Input Forces'.'6c0d9295-1c8a-46bc-81e6-a5293c917fcc'
                                to componentExchange ::> '5ce29749-067d-4884-af2a-1725f9542e72' { 
                                @CapellaID { eid = "0ba47383-c501-4ed5-b738-7734f469437a"; } 
                            }  
                            ref :>> ownedComponentExchangeFunctionalExchangeAllocations =  ('0ba47383-c501-4ed5-b738-7734f469437a'); 
                        }  
                        interface '44733c89-99f4-4f7f-9c37-4aafb7b48ac7' : ComponentExchange 
                            connect source ::> 'Right level'.'CP 2'
                            to  target ::> 'Right Piston'.'CP 1' { 
                            @CapellaID { eid = "44733c89-99f4-4f7f-9c37-4aafb7b48ac7"; } 
                            attribute :>> kind = ComponentExchangeKind::FLOW; 
                            attribute :>> interfaceName = "C 3"; 
                            attribute :>> isOriented = false; 
                            allocation '47d7186b-523b-44f7-a8b0-a5588f2fa40e' : ComponentExchangeFunctionalExchangeAllocation
                                allocate functionalExchange ::> 'Physical Functions'::'Root Physical Function'.'Provide Stopping'.'107d695a-7947-436c-ab45-f32601351120'
                                to componentExchange ::> '44733c89-99f4-4f7f-9c37-4aafb7b48ac7' { 
                                @CapellaID { eid = "47d7186b-523b-44f7-a8b0-a5588f2fa40e"; } 
                            }  
                            ref :>> ownedComponentExchangeFunctionalExchangeAllocations =  ('47d7186b-523b-44f7-a8b0-a5588f2fa40e'); 
                        }  
                        interface '816dd4c6-8c83-4858-bc85-a4599e364698' : ComponentExchange 
                            connect source ::> 'Right Resovior'.'CP 1'
                            to  target ::> 'Right Piston'.'CP 2' { 
                            @CapellaID { eid = "816dd4c6-8c83-4858-bc85-a4599e364698"; } 
                            attribute :>> kind = ComponentExchangeKind::FLOW; 
                            attribute :>> interfaceName = "C 4"; 
                            attribute :>> isOriented = false; 
                            allocation '875507b9-f555-4fe8-91ad-abc9b73ad2cf' : ComponentExchangeFunctionalExchangeAllocation
                                allocate functionalExchange ::> 'Physical Functions'::'Root Physical Function'.'Provide Stopping'.'Modulate Input Forces'.'a8289f09-22c2-4b45-8eda-7ec5b8ced5c8'
                                to componentExchange ::> '816dd4c6-8c83-4858-bc85-a4599e364698' { 
                                @CapellaID { eid = "875507b9-f555-4fe8-91ad-abc9b73ad2cf"; } 
                            }  
                            ref :>> ownedComponentExchangeFunctionalExchangeAllocations =  ('875507b9-f555-4fe8-91ad-abc9b73ad2cf'); 
                        }  
                        part '0221b024-a35c-4361-979d-5a5029fb41e3' : CPart :> 'Left Lever'  { 
                            @CapellaID { eid = "0221b024-a35c-4361-979d-5a5029fb41e3"; } 
                            attribute :>> aggregationKind = AggregationKind::UNSET; 
                            attribute :>> isFinal = false; 
                            attribute :>> isAbstract = false; 
                            attribute :>> isDerived = false; 
                            attribute :>> isPartOfKey = false; 
                            attribute :>> isReadOnly = false; 
                            attribute :>> isStatic = false; 
                            attribute :>> isMaxInclusive = false; 
                            attribute :>> isMinInclusive = false; 
                            attribute :>> isOrdered = false; 
                            attribute :>> isUnique = false; 
                        }  
                        part '79a2f934-431d-4043-96f5-7106c6946b88' : CPart :> 'Left Piston'  { 
                            @CapellaID { eid = "79a2f934-431d-4043-96f5-7106c6946b88"; } 
                            attribute :>> aggregationKind = AggregationKind::UNSET; 
                            attribute :>> isFinal = false; 
                            attribute :>> isAbstract = false; 
                            attribute :>> isDerived = false; 
                            attribute :>> isPartOfKey = false; 
                            attribute :>> isReadOnly = false; 
                            attribute :>> isStatic = false; 
                            attribute :>> isMaxInclusive = false; 
                            attribute :>> isMinInclusive = false; 
                            attribute :>> isOrdered = false; 
                            attribute :>> isUnique = false; 
                        }  
                        part 'd1dd7dbe-a88e-4ef7-9bb4-18ff6d26be19' : CPart :> 'Right level'  { 
                            @CapellaID { eid = "d1dd7dbe-a88e-4ef7-9bb4-18ff6d26be19"; } 
                            attribute :>> aggregationKind = AggregationKind::UNSET; 
                            attribute :>> isFinal = false; 
                            attribute :>> isAbstract = false; 
                            attribute :>> isDerived = false; 
                            attribute :>> isPartOfKey = false; 
                            attribute :>> isReadOnly = false; 
                            attribute :>> isStatic = false; 
                            attribute :>> isMaxInclusive = false; 
                            attribute :>> isMinInclusive = false; 
                            attribute :>> isOrdered = false; 
                            attribute :>> isUnique = false; 
                        }  
                        part 'b0b283c7-94e1-4570-a52e-787d7e6f4ec9' : CPart :> 'Right Piston'  { 
                            @CapellaID { eid = "b0b283c7-94e1-4570-a52e-787d7e6f4ec9"; } 
                            attribute :>> aggregationKind = AggregationKind::UNSET; 
                            attribute :>> isFinal = false; 
                            attribute :>> isAbstract = false; 
                            attribute :>> isDerived = false; 
                            attribute :>> isPartOfKey = false; 
                            attribute :>> isReadOnly = false; 
                            attribute :>> isStatic = false; 
                            attribute :>> isMaxInclusive = false; 
                            attribute :>> isMinInclusive = false; 
                            attribute :>> isOrdered = false; 
                            attribute :>> isUnique = false; 
                        }  
                        part '252a4765-3600-4389-84c4-44525af889c0' : CPart :> 'Left Resovior'  { 
                            @CapellaID { eid = "252a4765-3600-4389-84c4-44525af889c0"; } 
                            attribute :>> aggregationKind = AggregationKind::UNSET; 
                            attribute :>> isFinal = false; 
                            attribute :>> isAbstract = false; 
                            attribute :>> isDerived = false; 
                            attribute :>> isPartOfKey = false; 
                            attribute :>> isReadOnly = false; 
                            attribute :>> isStatic = false; 
                            attribute :>> isMaxInclusive = false; 
                            attribute :>> isMinInclusive = false; 
                            attribute :>> isOrdered = false; 
                            attribute :>> isUnique = false; 
                        }  
                        part '242b5cbb-7a11-4699-8070-15f665597a22' : CPart :> 'Right Resovior'  { 
                            @CapellaID { eid = "242b5cbb-7a11-4699-8070-15f665597a22"; } 
                            attribute :>> aggregationKind = AggregationKind::UNSET; 
                            attribute :>> isFinal = false; 
                            attribute :>> isAbstract = false; 
                            attribute :>> isDerived = false; 
                            attribute :>> isPartOfKey = false; 
                            attribute :>> isReadOnly = false; 
                            attribute :>> isStatic = false; 
                            attribute :>> isMaxInclusive = false; 
                            attribute :>> isMinInclusive = false; 
                            attribute :>> isOrdered = false; 
                            attribute :>> isUnique = false; 
                        }  
                        part '45777470-aa7d-458e-9553-9674e03a4c69' : CPart :> 'Support Left'  { 
                            @CapellaID { eid = "45777470-aa7d-458e-9553-9674e03a4c69"; } 
                            attribute :>> aggregationKind = AggregationKind::UNSET; 
                            attribute :>> isFinal = false; 
                            attribute :>> isAbstract = false; 
                            attribute :>> isDerived = false; 
                            attribute :>> isPartOfKey = false; 
                            attribute :>> isReadOnly = false; 
                            attribute :>> isStatic = false; 
                            attribute :>> isMaxInclusive = false; 
                            attribute :>> isMinInclusive = false; 
                            attribute :>> isOrdered = false; 
                            attribute :>> isUnique = false; 
                        }  
                        part '216e7945-2f72-4ba6-ad86-896a50dfd778' : CPart :> 'Support Right'  { 
                            @CapellaID { eid = "216e7945-2f72-4ba6-ad86-896a50dfd778"; } 
                            attribute :>> aggregationKind = AggregationKind::UNSET; 
                            attribute :>> isFinal = false; 
                            attribute :>> isAbstract = false; 
                            attribute :>> isDerived = false; 
                            attribute :>> isPartOfKey = false; 
                            attribute :>> isReadOnly = false; 
                            attribute :>> isStatic = false; 
                            attribute :>> isMaxInclusive = false; 
                            attribute :>> isMinInclusive = false; 
                            attribute :>> isOrdered = false; 
                            attribute :>> isUnique = false; 
                        }  
                        dependency '042ba2f1-aed5-4626-80cb-40f5fc30d901'
                            from '970c259c-8edf-44cf-8278-7a6fbe7f545f'
                            to  'Logical Architecture'::'Structure'::'Braking System'::'Control Subsystem'::'25a8df6a-931f-49af-9dc5-4cb3f3ce4b86' { 
                            @TransfoLink { 
                                @CapellaID { eid = "042ba2f1-aed5-4626-80cb-40f5fc30d901"; } 
                            }  
                        }  
                        dependency 'b6782b90-0bda-4f36-9b0d-819687539f9f'
                            from 'e7f90c6d-4173-4743-9ff4-1c26ea9c8569'
                            to  'Logical Architecture'::'Structure'::'Braking System'::'Control Subsystem'::'1f3d5211-b3ba-4f1f-a3e0-3a3d5cb01be1' { 
                            @TransfoLink { 
                                @CapellaID { eid = "b6782b90-0bda-4f36-9b0d-819687539f9f"; } 
                            }  
                        }  
                        dependency '253eb88e-fdcd-4bc5-89fe-6e4a8c32e80d'
                            from '2cf367eb-478b-491a-814b-27fffd465e92'
                            to  'Logical Architecture'::'Structure'::'Braking System'::'Control Subsystem'::'186edbc3-10d9-4a11-b44c-c17a4a48299f' { 
                            @TransfoLink { 
                                @CapellaID { eid = "253eb88e-fdcd-4bc5-89fe-6e4a8c32e80d"; } 
                            }  
                        }  
                        part 'Left Lever' : PhysicalComponent { 
                            @CapellaID { eid = "aa09fd30-10ce-4579-af5d-a28b76f04960"; } 
                            attribute :>> isAbstract = false; 
                            attribute :>> isActor = false; 
                            attribute :>> isHuman = false; 
                            attribute :>> kind = PhysicalComponentKind::UNSET; 
                            attribute :>> nature = PhysicalComponentNature::BEHAVIOR; 
                            allocation 'f13eb966-1e3e-4d7a-8ae8-98dd4976532e' : ComponentFunctionalAllocation
                                allocate function ::> 'Physical Functions'::'Root Physical Function'.'Provide Stopping'.'Capture Brake Input'.'Capture Left Brake Input'
                                to component ::> 'Left Lever' { 
                                @CapellaID { eid = "f13eb966-1e3e-4d7a-8ae8-98dd4976532e"; } 
                            } 
                            perform 'Physical Functions'::'Root Physical Function'.'Provide Stopping'.'Capture Brake Input'.'Capture Left Brake Input' ; 
                            port 'CP 1' : ComponentPort { 
                                @CapellaID { eid = "a7b40a3a-4701-41dc-bdbd-832f69a61392"; } 
                                attribute :>> aggregationKind = AggregationKind::UNSET; 
                                attribute :>> isFinal = false; 
                                attribute :>> isAbstract = false; 
                                attribute :>> isDerived = false; 
                                attribute :>> isPartOfKey = false; 
                                attribute :>> isReadOnly = false; 
                                attribute :>> isStatic = false; 
                                attribute :>> kind = ComponentPortKind::FLOW; 
                                attribute :>> isMaxInclusive = false; 
                                attribute :>> isMinInclusive = false; 
                                attribute :>> isOrdered = false; 
                                attribute :>> orientation = OrientationPortKind::OUT; 
                                attribute :>> isUnique = false; 
                                ref allocation '4b2c086b-5c91-400f-9d45-c00466aa0171' : PortAllocation
                                    allocate allocatedPort ::> 'Physical Functions'::'Root Physical Function'.'Provide Stopping'.'Capture Brake Input'.'Capture Left Brake Input'.'FOP 1'
                                    to allocatingPort ::> 'CP 1'; 
                                ref :>> ownedPortAllocations =  ('4b2c086b-5c91-400f-9d45-c00466aa0171'); 
                            }  
                            port 'CP 2' : ComponentPort { 
                                @CapellaID { eid = "9522a8bb-ec4b-4235-9d08-b4a3b9b23fb5"; } 
                                attribute :>> aggregationKind = AggregationKind::UNSET; 
                                attribute :>> isFinal = false; 
                                attribute :>> isAbstract = false; 
                                attribute :>> isDerived = false; 
                                attribute :>> isPartOfKey = false; 
                                attribute :>> isReadOnly = false; 
                                attribute :>> isStatic = false; 
                                attribute :>> kind = ComponentPortKind::FLOW; 
                                attribute :>> isMaxInclusive = false; 
                                attribute :>> isMinInclusive = false; 
                                attribute :>> isOrdered = false; 
                                attribute :>> orientation = OrientationPortKind::IN; 
                                attribute :>> isUnique = false; 
                                ref allocation '930d0755-104d-4d54-bedd-f5f4785ea3ea' : PortAllocation
                                    allocate allocatedPort ::> 'Physical Functions'::'Root Physical Function'.'Provide Stopping'.'Capture Brake Input'.'Capture Left Brake Input'.'FIP 1'
                                    to allocatingPort ::> 'CP 2'; 
                                ref :>> ownedPortAllocations =  ('930d0755-104d-4d54-bedd-f5f4785ea3ea'); 
                            }  
                            ref :>> ownedFunctionalAllocation =  ('f13eb966-1e3e-4d7a-8ae8-98dd4976532e'); 
                        }  
                        part 'Left Piston' : PhysicalComponent { 
                            @CapellaID { eid = "f5e4bbff-ae31-466e-af5b-ed6346f855c0"; } 
                            attribute :>> isAbstract = false; 
                            attribute :>> isActor = false; 
                            attribute :>> isHuman = false; 
                            attribute :>> kind = PhysicalComponentKind::UNSET; 
                            attribute :>> nature = PhysicalComponentNature::BEHAVIOR; 
                            allocation '24fe4945-0300-4c5b-97d0-71dca13eaeb0' : ComponentFunctionalAllocation
                                allocate function ::> 'Physical Functions'::'Root Physical Function'.'Provide Stopping'.'Transmit Force'.'Transmit Left Force'
                                to component ::> 'Left Piston' { 
                                @CapellaID { eid = "24fe4945-0300-4c5b-97d0-71dca13eaeb0"; } 
                            } 
                            perform 'Physical Functions'::'Root Physical Function'.'Provide Stopping'.'Transmit Force'.'Transmit Left Force' ; 
                            allocation '96adf11e-08be-4f8d-96e4-33f73e31743e' : ComponentFunctionalAllocation
                                allocate function ::> 'Physical Functions'::'Root Physical Function'.'Provide Stopping'.'Modulate Input Forces'.'Modulate Left Input Force'
                                to component ::> 'Left Piston' { 
                                @CapellaID { eid = "96adf11e-08be-4f8d-96e4-33f73e31743e"; } 
                            } 
                            perform 'Physical Functions'::'Root Physical Function'.'Provide Stopping'.'Modulate Input Forces'.'Modulate Left Input Force' ; 
                            port 'CP 1' : ComponentPort { 
                                @CapellaID { eid = "536e71a5-10ce-4b1e-8457-1cd1919e6a7b"; } 
                                attribute :>> aggregationKind = AggregationKind::UNSET; 
                                attribute :>> isFinal = false; 
                                attribute :>> isAbstract = false; 
                                attribute :>> isDerived = false; 
                                attribute :>> isPartOfKey = false; 
                                attribute :>> isReadOnly = false; 
                                attribute :>> isStatic = false; 
                                attribute :>> kind = ComponentPortKind::FLOW; 
                                attribute :>> isMaxInclusive = false; 
                                attribute :>> isMinInclusive = false; 
                                attribute :>> isOrdered = false; 
                                attribute :>> orientation = OrientationPortKind::IN; 
                                attribute :>> isUnique = false; 
                                ref allocation 'c1dc6e7d-bff1-45af-9bd3-9f5711740bd5' : PortAllocation
                                    allocate allocatedPort ::> 'Physical Functions'::'Root Physical Function'.'Provide Stopping'.'Modulate Input Forces'.'Modulate Left Input Force'.'FIP 1'
                                    to allocatingPort ::> 'CP 1'; 
                                ref :>> ownedPortAllocations =  ('c1dc6e7d-bff1-45af-9bd3-9f5711740bd5'); 
                            }  
                            port 'CP 2' : ComponentPort { 
                                @CapellaID { eid = "47c05e9f-4a8c-4670-b671-e06e78dc8599"; } 
                                attribute :>> aggregationKind = AggregationKind::UNSET; 
                                attribute :>> isFinal = false; 
                                attribute :>> isAbstract = false; 
                                attribute :>> isDerived = false; 
                                attribute :>> isPartOfKey = false; 
                                attribute :>> isReadOnly = false; 
                                attribute :>> isStatic = false; 
                                attribute :>> kind = ComponentPortKind::FLOW; 
                                attribute :>> isMaxInclusive = false; 
                                attribute :>> isMinInclusive = false; 
                                attribute :>> isOrdered = false; 
                                attribute :>> orientation = OrientationPortKind::IN; 
                                attribute :>> isUnique = false; 
                                ref allocation 'b7774361-6384-4b3a-8eb9-6df293dc778d' : PortAllocation
                                    allocate allocatedPort ::> 'Physical Functions'::'Root Physical Function'.'Provide Stopping'.'Modulate Input Forces'.'Modulate Left Input Force'.'FIP 2'
                                    to allocatingPort ::> 'CP 2'; 
                                ref :>> ownedPortAllocations =  ('b7774361-6384-4b3a-8eb9-6df293dc778d'); 
                            }  
                            port 'CP 3' : ComponentPort { 
                                @CapellaID { eid = "a1c22062-2fbf-4351-a220-c8588e519a5f"; } 
                                attribute :>> aggregationKind = AggregationKind::UNSET; 
                                attribute :>> isFinal = false; 
                                attribute :>> isAbstract = false; 
                                attribute :>> isDerived = false; 
                                attribute :>> isPartOfKey = false; 
                                attribute :>> isReadOnly = false; 
                                attribute :>> isStatic = false; 
                                attribute :>> kind = ComponentPortKind::FLOW; 
                                attribute :>> isMaxInclusive = false; 
                                attribute :>> isMinInclusive = false; 
                                attribute :>> isOrdered = false; 
                                attribute :>> orientation = OrientationPortKind::OUT; 
                                attribute :>> isUnique = false; 
                                ref allocation 'e015241a-0c66-4837-8067-b96bd74c9929' : PortAllocation
                                    allocate allocatedPort ::> 'Physical Functions'::'Root Physical Function'.'Provide Stopping'.'Transmit Force'.'Transmit Left Force'.'FOP 1'
                                    to allocatingPort ::> 'CP 3'; 
                                ref :>> ownedPortAllocations =  ('e015241a-0c66-4837-8067-b96bd74c9929'); 
                            }  
                            ref :>> ownedFunctionalAllocation =  ('24fe4945-0300-4c5b-97d0-71dca13eaeb0',
                            '96adf11e-08be-4f8d-96e4-33f73e31743e'); 
                        }  
                        part 'Right level' : PhysicalComponent { 
                            @CapellaID { eid = "2186b217-a0e7-4a9f-867b-8d013bce9e79"; } 
                            attribute :>> isAbstract = false; 
                            attribute :>> isActor = false; 
                            attribute :>> isHuman = false; 
                            attribute :>> kind = PhysicalComponentKind::UNSET; 
                            attribute :>> nature = PhysicalComponentNature::BEHAVIOR; 
                            allocation 'ee2a6345-2409-4203-9df7-af060cf3821d' : ComponentFunctionalAllocation
                                allocate function ::> 'Physical Functions'::'Root Physical Function'.'Provide Stopping'.'Capture Brake Input'.'Capture Right Brake Input'
                                to component ::> 'Right level' { 
                                @CapellaID { eid = "ee2a6345-2409-4203-9df7-af060cf3821d"; } 
                            } 
                            perform 'Physical Functions'::'Root Physical Function'.'Provide Stopping'.'Capture Brake Input'.'Capture Right Brake Input' ; 
                            port 'CP 1' : ComponentPort { 
                                @CapellaID { eid = "9058ef1a-18d7-4438-81ac-e9bb5e60b13f"; } 
                                attribute :>> aggregationKind = AggregationKind::UNSET; 
                                attribute :>> isFinal = false; 
                                attribute :>> isAbstract = false; 
                                attribute :>> isDerived = false; 
                                attribute :>> isPartOfKey = false; 
                                attribute :>> isReadOnly = false; 
                                attribute :>> isStatic = false; 
                                attribute :>> kind = ComponentPortKind::FLOW; 
                                attribute :>> isMaxInclusive = false; 
                                attribute :>> isMinInclusive = false; 
                                attribute :>> isOrdered = false; 
                                attribute :>> orientation = OrientationPortKind::IN; 
                                attribute :>> isUnique = false; 
                                ref allocation '2bdad4d0-16e3-46d4-b0bd-ee5e5c182848' : PortAllocation
                                    allocate allocatedPort ::> 'Physical Functions'::'Root Physical Function'.'Provide Stopping'.'Capture Brake Input'.'Capture Right Brake Input'.'FIP 1'
                                    to allocatingPort ::> 'CP 1'; 
                                ref :>> ownedPortAllocations =  ('2bdad4d0-16e3-46d4-b0bd-ee5e5c182848'); 
                            }  
                            port 'CP 2' : ComponentPort { 
                                @CapellaID { eid = "695f3dfd-9d92-4a3b-85f4-0793633dccb5"; } 
                                attribute :>> aggregationKind = AggregationKind::UNSET; 
                                attribute :>> isFinal = false; 
                                attribute :>> isAbstract = false; 
                                attribute :>> isDerived = false; 
                                attribute :>> isPartOfKey = false; 
                                attribute :>> isReadOnly = false; 
                                attribute :>> isStatic = false; 
                                attribute :>> kind = ComponentPortKind::FLOW; 
                                attribute :>> isMaxInclusive = false; 
                                attribute :>> isMinInclusive = false; 
                                attribute :>> isOrdered = false; 
                                attribute :>> orientation = OrientationPortKind::OUT; 
                                attribute :>> isUnique = false; 
                                ref allocation '8b2812b1-d66c-4b67-86c8-1f4b9ac25d7c' : PortAllocation
                                    allocate allocatedPort ::> 'Physical Functions'::'Root Physical Function'.'Provide Stopping'.'Capture Brake Input'.'Capture Right Brake Input'.'FOP 1'
                                    to allocatingPort ::> 'CP 2'; 
                                ref :>> ownedPortAllocations =  ('8b2812b1-d66c-4b67-86c8-1f4b9ac25d7c'); 
                            }  
                            ref :>> ownedFunctionalAllocation =  ('ee2a6345-2409-4203-9df7-af060cf3821d'); 
                        }  
                        part 'Right Piston' : PhysicalComponent { 
                            @CapellaID { eid = "f4a8a347-925c-45fc-af61-50496292ff86"; } 
                            attribute :>> isAbstract = false; 
                            attribute :>> isActor = false; 
                            attribute :>> isHuman = false; 
                            attribute :>> kind = PhysicalComponentKind::UNSET; 
                            attribute :>> nature = PhysicalComponentNature::BEHAVIOR; 
                            allocation '8121701a-d776-48c5-aed9-69a8add8364e' : ComponentFunctionalAllocation
                                allocate function ::> 'Physical Functions'::'Root Physical Function'.'Provide Stopping'.'Modulate Input Forces'.'Modulate Right Input Force'
                                to component ::> 'Right Piston' { 
                                @CapellaID { eid = "8121701a-d776-48c5-aed9-69a8add8364e"; } 
                            } 
                            perform 'Physical Functions'::'Root Physical Function'.'Provide Stopping'.'Modulate Input Forces'.'Modulate Right Input Force' ; 
                            allocation '302005e2-e985-49e4-86cb-922e700f336f' : ComponentFunctionalAllocation
                                allocate function ::> 'Physical Functions'::'Root Physical Function'.'Provide Stopping'.'Transmit Force'.'Transmit Right Force'
                                to component ::> 'Right Piston' { 
                                @CapellaID { eid = "302005e2-e985-49e4-86cb-922e700f336f"; } 
                            } 
                            perform 'Physical Functions'::'Root Physical Function'.'Provide Stopping'.'Transmit Force'.'Transmit Right Force' ; 
                            port 'CP 1' : ComponentPort { 
                                @CapellaID { eid = "f04118ae-9297-4340-8c77-e4ad9c9725a1"; } 
                                attribute :>> aggregationKind = AggregationKind::UNSET; 
                                attribute :>> isFinal = false; 
                                attribute :>> isAbstract = false; 
                                attribute :>> isDerived = false; 
                                attribute :>> isPartOfKey = false; 
                                attribute :>> isReadOnly = false; 
                                attribute :>> isStatic = false; 
                                attribute :>> kind = ComponentPortKind::FLOW; 
                                attribute :>> isMaxInclusive = false; 
                                attribute :>> isMinInclusive = false; 
                                attribute :>> isOrdered = false; 
                                attribute :>> orientation = OrientationPortKind::IN; 
                                attribute :>> isUnique = false; 
                                ref allocation '5f1e9810-37a3-4f4c-9e5b-db33c9f65e2e' : PortAllocation
                                    allocate allocatedPort ::> 'Physical Functions'::'Root Physical Function'.'Provide Stopping'.'Modulate Input Forces'.'Modulate Right Input Force'.'FIP 1'
                                    to allocatingPort ::> 'CP 1'; 
                                ref :>> ownedPortAllocations =  ('5f1e9810-37a3-4f4c-9e5b-db33c9f65e2e'); 
                            }  
                            port 'CP 2' : ComponentPort { 
                                @CapellaID { eid = "56d2329b-d764-4d7a-8269-f792e3910c09"; } 
                                attribute :>> aggregationKind = AggregationKind::UNSET; 
                                attribute :>> isFinal = false; 
                                attribute :>> isAbstract = false; 
                                attribute :>> isDerived = false; 
                                attribute :>> isPartOfKey = false; 
                                attribute :>> isReadOnly = false; 
                                attribute :>> isStatic = false; 
                                attribute :>> kind = ComponentPortKind::FLOW; 
                                attribute :>> isMaxInclusive = false; 
                                attribute :>> isMinInclusive = false; 
                                attribute :>> isOrdered = false; 
                                attribute :>> orientation = OrientationPortKind::IN; 
                                attribute :>> isUnique = false; 
                                ref allocation '5dc89c9c-1c48-4218-b393-978ea18960d9' : PortAllocation
                                    allocate allocatedPort ::> 'Physical Functions'::'Root Physical Function'.'Provide Stopping'.'Modulate Input Forces'.'Modulate Right Input Force'.'FIP 2'
                                    to allocatingPort ::> 'CP 2'; 
                                ref :>> ownedPortAllocations =  ('5dc89c9c-1c48-4218-b393-978ea18960d9'); 
                            }  
                            port 'CP 3' : ComponentPort { 
                                @CapellaID { eid = "302282ea-aaeb-42b6-abf0-9e0b5cb0ceef"; } 
                                attribute :>> aggregationKind = AggregationKind::UNSET; 
                                attribute :>> isFinal = false; 
                                attribute :>> isAbstract = false; 
                                attribute :>> isDerived = false; 
                                attribute :>> isPartOfKey = false; 
                                attribute :>> isReadOnly = false; 
                                attribute :>> isStatic = false; 
                                attribute :>> kind = ComponentPortKind::FLOW; 
                                attribute :>> isMaxInclusive = false; 
                                attribute :>> isMinInclusive = false; 
                                attribute :>> isOrdered = false; 
                                attribute :>> orientation = OrientationPortKind::OUT; 
                                attribute :>> isUnique = false; 
                                ref allocation 'f5a2627f-9edb-4066-b628-b22b30be4237' : PortAllocation
                                    allocate allocatedPort ::> 'Physical Functions'::'Root Physical Function'.'Provide Stopping'.'Transmit Force'.'Transmit Right Force'.'FOP 1'
                                    to allocatingPort ::> 'CP 3'; 
                                ref :>> ownedPortAllocations =  ('f5a2627f-9edb-4066-b628-b22b30be4237'); 
                            }  
                            ref :>> ownedFunctionalAllocation =  ('8121701a-d776-48c5-aed9-69a8add8364e',
                            '302005e2-e985-49e4-86cb-922e700f336f'); 
                        }  
                        part 'Left Resovior' : PhysicalComponent { 
                            @CapellaID { eid = "06f6cbad-7920-4fd6-91af-d80fc1cc6231"; } 
                            attribute :>> isAbstract = false; 
                            attribute :>> isActor = false; 
                            attribute :>> isHuman = false; 
                            attribute :>> kind = PhysicalComponentKind::UNSET; 
                            attribute :>> nature = PhysicalComponentNature::BEHAVIOR; 
                            allocation 'f3e64e96-1410-4905-b3ef-1432587d9b1e' : ComponentFunctionalAllocation
                                allocate function ::> 'Physical Functions'::'Root Physical Function'.'Provide Stopping'.'Modulate Input Forces'.'Store Left Fluid'
                                to component ::> 'Left Resovior' { 
                                @CapellaID { eid = "f3e64e96-1410-4905-b3ef-1432587d9b1e"; } 
                            } 
                            perform 'Physical Functions'::'Root Physical Function'.'Provide Stopping'.'Modulate Input Forces'.'Store Left Fluid' ; 
                            port 'CP 1' : ComponentPort { 
                                @CapellaID { eid = "47cf177b-51bc-4b22-b593-a821b489f8b6"; } 
                                attribute :>> aggregationKind = AggregationKind::UNSET; 
                                attribute :>> isFinal = false; 
                                attribute :>> isAbstract = false; 
                                attribute :>> isDerived = false; 
                                attribute :>> isPartOfKey = false; 
                                attribute :>> isReadOnly = false; 
                                attribute :>> isStatic = false; 
                                attribute :>> kind = ComponentPortKind::FLOW; 
                                attribute :>> isMaxInclusive = false; 
                                attribute :>> isMinInclusive = false; 
                                attribute :>> isOrdered = false; 
                                attribute :>> orientation = OrientationPortKind::OUT; 
                                attribute :>> isUnique = false; 
                                ref allocation 'a66ee326-e7a8-4c6d-a819-6db711197c86' : PortAllocation
                                    allocate allocatedPort ::> 'Physical Functions'::'Root Physical Function'.'Provide Stopping'.'Modulate Input Forces'.'Store Left Fluid'.'FOP 1'
                                    to allocatingPort ::> 'CP 1'; 
                                ref :>> ownedPortAllocations =  ('a66ee326-e7a8-4c6d-a819-6db711197c86'); 
                            }  
                            port 'CP 2' : ComponentPort { 
                                @CapellaID { eid = "a6322aa9-8326-43b7-85fc-d81b7c2fbd78"; } 
                                attribute :>> aggregationKind = AggregationKind::UNSET; 
                                attribute :>> isFinal = false; 
                                attribute :>> isAbstract = false; 
                                attribute :>> isDerived = false; 
                                attribute :>> isPartOfKey = false; 
                                attribute :>> isReadOnly = false; 
                                attribute :>> isStatic = false; 
                                attribute :>> kind = ComponentPortKind::FLOW; 
                                attribute :>> isMaxInclusive = false; 
                                attribute :>> isMinInclusive = false; 
                                attribute :>> isOrdered = false; 
                                attribute :>> orientation = OrientationPortKind::IN; 
                                attribute :>> isUnique = false; 
                            }  
                            ref :>> ownedFunctionalAllocation =  ('f3e64e96-1410-4905-b3ef-1432587d9b1e'); 
                        }  
                        part 'Right Resovior' : PhysicalComponent { 
                            @CapellaID { eid = "37177dbc-7cff-4c8f-89d4-f907f9ff59f1"; } 
                            attribute :>> isAbstract = false; 
                            attribute :>> isActor = false; 
                            attribute :>> isHuman = false; 
                            attribute :>> kind = PhysicalComponentKind::UNSET; 
                            attribute :>> nature = PhysicalComponentNature::BEHAVIOR; 
                            allocation 'ad0294ee-aa03-429a-bc2e-0dbbb7e6f563' : ComponentFunctionalAllocation
                                allocate function ::> 'Physical Functions'::'Root Physical Function'.'Provide Stopping'.'Modulate Input Forces'.'Store Right Fluid'
                                to component ::> 'Right Resovior' { 
                                @CapellaID { eid = "ad0294ee-aa03-429a-bc2e-0dbbb7e6f563"; } 
                            } 
                            perform 'Physical Functions'::'Root Physical Function'.'Provide Stopping'.'Modulate Input Forces'.'Store Right Fluid' ; 
                            port 'CP 1' : ComponentPort { 
                                @CapellaID { eid = "e7299cf2-74a6-4c68-bb44-adcb41722df7"; } 
                                attribute :>> aggregationKind = AggregationKind::UNSET; 
                                attribute :>> isFinal = false; 
                                attribute :>> isAbstract = false; 
                                attribute :>> isDerived = false; 
                                attribute :>> isPartOfKey = false; 
                                attribute :>> isReadOnly = false; 
                                attribute :>> isStatic = false; 
                                attribute :>> kind = ComponentPortKind::FLOW; 
                                attribute :>> isMaxInclusive = false; 
                                attribute :>> isMinInclusive = false; 
                                attribute :>> isOrdered = false; 
                                attribute :>> orientation = OrientationPortKind::OUT; 
                                attribute :>> isUnique = false; 
                                ref allocation 'eb22c330-ac64-4a7f-8b52-e6757225bbbd' : PortAllocation
                                    allocate allocatedPort ::> 'Physical Functions'::'Root Physical Function'.'Provide Stopping'.'Modulate Input Forces'.'Store Right Fluid'.'FOP 1'
                                    to allocatingPort ::> 'CP 1'; 
                                ref :>> ownedPortAllocations =  ('eb22c330-ac64-4a7f-8b52-e6757225bbbd'); 
                            }  
                            port 'CP 2' : ComponentPort { 
                                @CapellaID { eid = "09a39c82-68f9-4d56-a70e-73758e2b2a13"; } 
                                attribute :>> aggregationKind = AggregationKind::UNSET; 
                                attribute :>> isFinal = false; 
                                attribute :>> isAbstract = false; 
                                attribute :>> isDerived = false; 
                                attribute :>> isPartOfKey = false; 
                                attribute :>> isReadOnly = false; 
                                attribute :>> isStatic = false; 
                                attribute :>> kind = ComponentPortKind::FLOW; 
                                attribute :>> isMaxInclusive = false; 
                                attribute :>> isMinInclusive = false; 
                                attribute :>> isOrdered = false; 
                                attribute :>> orientation = OrientationPortKind::IN; 
                                attribute :>> isUnique = false; 
                                ref allocation '1fe93273-1d18-4ee6-8267-baca79fbe919' : PortAllocation
                                    allocate allocatedPort ::> 'Physical Functions'::'Root Physical Function'.'Provide Stopping'.'Modulate Input Forces'.'Store Right Fluid'.'FIP 1'
                                    to allocatingPort ::> 'CP 2'; 
                                ref :>> ownedPortAllocations =  ('1fe93273-1d18-4ee6-8267-baca79fbe919'); 
                            }  
                            ref :>> ownedFunctionalAllocation =  ('ad0294ee-aa03-429a-bc2e-0dbbb7e6f563'); 
                        }  
                        part 'Support Left' : PhysicalComponent { 
                            @CapellaID { eid = "6e991524-f6c9-49a8-ab6d-c79496eacf21"; } 
                            attribute :>> isAbstract = false; 
                            attribute :>> isActor = false; 
                            attribute :>> isHuman = false; 
                            attribute :>> kind = PhysicalComponentKind::UNSET; 
                            attribute :>> nature = PhysicalComponentNature::BEHAVIOR; 
                            allocation '1f52489f-0748-4707-b733-7c701bbe7d3d' : ComponentFunctionalAllocation
                                allocate function ::> 'Physical Functions'::'Root Physical Function'.'Receive Support'
                                to component ::> 'Support Left' { 
                                @CapellaID { eid = "1f52489f-0748-4707-b733-7c701bbe7d3d"; } 
                            } 
                            perform 'Physical Functions'::'Root Physical Function'.'Receive Support' ; 
                            port 'CP 1' : ComponentPort { 
                                @CapellaID { eid = "95824ad9-ec7c-48b7-8c51-df233bf1cd53"; } 
                                attribute :>> aggregationKind = AggregationKind::UNSET; 
                                attribute :>> isFinal = false; 
                                attribute :>> isAbstract = false; 
                                attribute :>> isDerived = false; 
                                attribute :>> isPartOfKey = false; 
                                attribute :>> isReadOnly = false; 
                                attribute :>> isStatic = false; 
                                attribute :>> kind = ComponentPortKind::FLOW; 
                                attribute :>> isMaxInclusive = false; 
                                attribute :>> isMinInclusive = false; 
                                attribute :>> isOrdered = false; 
                                attribute :>> orientation = OrientationPortKind::IN; 
                                attribute :>> isUnique = false; 
                                ref allocation '628f0340-9fe2-4f67-9842-279f6a1d3a33' : PortAllocation
                                    allocate allocatedPort ::> 'Physical Functions'::'Root Physical Function'.'Receive Support'.'FIP 1'
                                    to allocatingPort ::> 'CP 1'; 
                                ref :>> ownedPortAllocations =  ('628f0340-9fe2-4f67-9842-279f6a1d3a33'); 
                            }  
                            ref :>> ownedFunctionalAllocation =  ('1f52489f-0748-4707-b733-7c701bbe7d3d'); 
                        }  
                        part 'Support Right' : PhysicalComponent { 
                            @CapellaID { eid = "44854235-ac93-44d8-8eba-0d8608cd2709"; } 
                            attribute :>> isAbstract = false; 
                            attribute :>> isActor = false; 
                            attribute :>> isHuman = false; 
                            attribute :>> kind = PhysicalComponentKind::UNSET; 
                            attribute :>> nature = PhysicalComponentNature::BEHAVIOR; 
                            allocation '8dd5a048-428d-40c7-a114-67b987b1bf93' : ComponentFunctionalAllocation
                                allocate function ::> 'Physical Functions'::'Root Physical Function'.'Receive Support'
                                to component ::> 'Support Right' { 
                                @CapellaID { eid = "8dd5a048-428d-40c7-a114-67b987b1bf93"; } 
                            } 
                            perform 'Physical Functions'::'Root Physical Function'.'Receive Support' ; 
                            port 'CP 1' : ComponentPort { 
                                @CapellaID { eid = "f2047a50-1e40-4ee7-9cde-1ee8724b5276"; } 
                                attribute :>> aggregationKind = AggregationKind::UNSET; 
                                attribute :>> isFinal = false; 
                                attribute :>> isAbstract = false; 
                                attribute :>> isDerived = false; 
                                attribute :>> isPartOfKey = false; 
                                attribute :>> isReadOnly = false; 
                                attribute :>> isStatic = false; 
                                attribute :>> kind = ComponentPortKind::FLOW; 
                                attribute :>> isMaxInclusive = false; 
                                attribute :>> isMinInclusive = false; 
                                attribute :>> isOrdered = false; 
                                attribute :>> orientation = OrientationPortKind::IN; 
                                attribute :>> isUnique = false; 
                                ref allocation 'd4a4fdc5-efd8-4aa2-bd09-cbc88f8575e9' : PortAllocation
                                    allocate allocatedPort ::> 'Physical Functions'::'Root Physical Function'.'Receive Support'.'FIP 1'
                                    to allocatingPort ::> 'CP 1'; 
                                ref :>> ownedPortAllocations =  ('d4a4fdc5-efd8-4aa2-bd09-cbc88f8575e9'); 
                            }  
                            ref :>> ownedFunctionalAllocation =  ('8dd5a048-428d-40c7-a114-67b987b1bf93'); 
                        }  
                        ref :>> ownedFunctionalAllocation =  ('970c259c-8edf-44cf-8278-7a6fbe7f545f',
                        'e7f90c6d-4173-4743-9ff4-1c26ea9c8569',
                        '2cf367eb-478b-491a-814b-27fffd465e92'); 
                        ref :>> ownedComponentExchanges =  ('5e8e4ffc-7473-4fe9-b146-4d7050bef280',
                        '5ce29749-067d-4884-af2a-1725f9542e72',
                        '44733c89-99f4-4f7f-9c37-4aafb7b48ac7',
                        '816dd4c6-8c83-4858-bc85-a4599e364698'); 
                         
                        ref :>> ownedPhysicalComponents =  ('Left Lever',
                        'Left Piston',
                        'Right level',
                        'Right Piston',
                        'Left Resovior',
                        'Right Resovior',
                        'Support Left',
                        'Support Right'); 
                    }  
                    part 'Break Actuation Subsystem ' : PhysicalComponent { 
                        doc /*
                        <p>Example elements:</p>

                        <ul>
                        	<li>Caliper mechanism</li>
                        	<li>Brake pads</li>
                        	<li>Rotor or braking surface interface (abstracted as &ldquo;Energy Transfer Interface&rdquo;)</li>
                        </ul>

                        */ 
                        @CapellaID { eid = "2dd7ce74-bac2-40af-9fe2-913f36a315f3"; } 
                        attribute :>> isAbstract = false; 
                        attribute :>> isActor = false; 
                        attribute :>> isHuman = false; 
                        attribute :>> kind = PhysicalComponentKind::UNSET; 
                        attribute :>> nature = PhysicalComponentNature::BEHAVIOR; 
                        allocation '7fd449e5-44f2-44ba-9521-33c64adccd5f' : ComponentFunctionalAllocation
                            allocate function ::> 'Physical Functions'::'Root Physical Function'.'Receive Environment'
                            to component ::> 'Break Actuation Subsystem ' { 
                            @CapellaID { eid = "7fd449e5-44f2-44ba-9521-33c64adccd5f"; } 
                        } 
                        perform 'Physical Functions'::'Root Physical Function'.'Receive Environment' ; 
                        interface '11f735aa-d971-4dec-9a6f-d03990c5a4c0' : ComponentExchange 
                            connect source ::> 'Front Caliper'.'CP 2'
                            to  target ::> 'Left Front Pad'.'CP 1' { 
                            @CapellaID { eid = "11f735aa-d971-4dec-9a6f-d03990c5a4c0"; } 
                            attribute :>> kind = ComponentExchangeKind::FLOW; 
                            attribute :>> interfaceName = "C 1"; 
                            attribute :>> isOriented = false; 
                            allocation 'b655416c-4382-4ca4-b442-75c04752ad08' : ComponentExchangeFunctionalExchangeAllocation
                                allocate functionalExchange ::> 'Physical Functions'::'Root Physical Function'.'Provide Stopping'.'763a580a-732f-4649-8b96-377bdd7a9832'
                                to componentExchange ::> '11f735aa-d971-4dec-9a6f-d03990c5a4c0' { 
                                @CapellaID { eid = "b655416c-4382-4ca4-b442-75c04752ad08"; } 
                            }  
                            ref :>> ownedComponentExchangeFunctionalExchangeAllocations =  ('b655416c-4382-4ca4-b442-75c04752ad08'); 
                        }  
                        interface '4e224658-886b-46b4-ac88-9196eb9bb25a' : ComponentExchange 
                            connect source ::> 'Front Caliper'.'CP 3'
                            to  target ::> 'Right Front Pad'.'CP 1' { 
                            @CapellaID { eid = "4e224658-886b-46b4-ac88-9196eb9bb25a"; } 
                            attribute :>> kind = ComponentExchangeKind::FLOW; 
                            attribute :>> interfaceName = "C 2"; 
                            attribute :>> isOriented = false; 
                            allocation '56764d87-4d19-4212-becc-8de2d5a09f73' : ComponentExchangeFunctionalExchangeAllocation
                                allocate functionalExchange ::> 'Physical Functions'::'Root Physical Function'.'Provide Stopping'.'e71a14bb-0728-41e8-8d08-74aea00a35b9'
                                to componentExchange ::> '4e224658-886b-46b4-ac88-9196eb9bb25a' { 
                                @CapellaID { eid = "56764d87-4d19-4212-becc-8de2d5a09f73"; } 
                            }  
                            ref :>> ownedComponentExchangeFunctionalExchangeAllocations =  ('56764d87-4d19-4212-becc-8de2d5a09f73'); 
                        }  
                        interface 'd3d0ccf0-064e-4009-a6ae-159270d750ec' : ComponentExchange 
                            connect source ::> 'Rear Caliper'.'CP 2'
                            to  target ::> 'Left Rear Pad'.'CP 1' { 
                            @CapellaID { eid = "d3d0ccf0-064e-4009-a6ae-159270d750ec"; } 
                            attribute :>> kind = ComponentExchangeKind::FLOW; 
                            attribute :>> interfaceName = "C 3"; 
                            attribute :>> isOriented = false; 
                            allocation '8dbc9e9b-747a-4901-8ecf-f6d0b12191db' : ComponentExchangeFunctionalExchangeAllocation
                                allocate functionalExchange ::> 'Physical Functions'::'Root Physical Function'.'Provide Stopping'.'eb93c1e9-f8f6-49d2-8865-be38b83fc78d'
                                to componentExchange ::> 'd3d0ccf0-064e-4009-a6ae-159270d750ec' { 
                                @CapellaID { eid = "8dbc9e9b-747a-4901-8ecf-f6d0b12191db"; } 
                            }  
                            ref :>> ownedComponentExchangeFunctionalExchangeAllocations =  ('8dbc9e9b-747a-4901-8ecf-f6d0b12191db'); 
                        }  
                        interface 'e5766b5b-c867-4ea5-b26c-f66777e15a09' : ComponentExchange 
                            connect source ::> 'Rear Caliper'.'CP 3'
                            to  target ::> 'Right Rear Pad'.'CP 1' { 
                            @CapellaID { eid = "e5766b5b-c867-4ea5-b26c-f66777e15a09"; } 
                            attribute :>> kind = ComponentExchangeKind::FLOW; 
                            attribute :>> interfaceName = "C 4"; 
                            attribute :>> isOriented = false; 
                            allocation '77c79e8e-34ed-4a35-823b-62306df6f5d6' : ComponentExchangeFunctionalExchangeAllocation
                                allocate functionalExchange ::> 'Physical Functions'::'Root Physical Function'.'Provide Stopping'.'6fa1b1fd-8afc-4529-a200-b49b1c88f45f'
                                to componentExchange ::> 'e5766b5b-c867-4ea5-b26c-f66777e15a09' { 
                                @CapellaID { eid = "77c79e8e-34ed-4a35-823b-62306df6f5d6"; } 
                            }  
                            ref :>> ownedComponentExchangeFunctionalExchangeAllocations =  ('77c79e8e-34ed-4a35-823b-62306df6f5d6'); 
                        }  
                        interface '8fef87ab-be67-4971-8ebe-abf46919ac7f' : ComponentExchange 
                            connect source ::> 'Left Rear Pad'.'CP 2'
                            to  target ::> 'Rear Rotor'.'CP 1' { 
                            @CapellaID { eid = "8fef87ab-be67-4971-8ebe-abf46919ac7f"; } 
                            attribute :>> kind = ComponentExchangeKind::FLOW; 
                            attribute :>> interfaceName = "C 5"; 
                            attribute :>> isOriented = false; 
                            allocation '6a1a3c89-aa00-4696-8e92-e8e6444565bb' : ComponentExchangeFunctionalExchangeAllocation
                                allocate functionalExchange ::> 'Physical Functions'::'Root Physical Function'.'Provide Stopping'.'0aeaacf1-afe0-4d37-b005-cee78cf95e96'
                                to componentExchange ::> '8fef87ab-be67-4971-8ebe-abf46919ac7f' { 
                                @CapellaID { eid = "6a1a3c89-aa00-4696-8e92-e8e6444565bb"; } 
                            }  
                            ref :>> ownedComponentExchangeFunctionalExchangeAllocations =  ('6a1a3c89-aa00-4696-8e92-e8e6444565bb'); 
                        }  
                        interface 'bace771b-876b-4462-b24f-3490936f8ba0' : ComponentExchange 
                            connect source ::> 'Right Rear Pad'.'CP 2'
                            to  target ::> 'Rear Rotor'.'CP 2' { 
                            @CapellaID { eid = "bace771b-876b-4462-b24f-3490936f8ba0"; } 
                            attribute :>> kind = ComponentExchangeKind::FLOW; 
                            attribute :>> interfaceName = "C 6"; 
                            attribute :>> isOriented = false; 
                            allocation '3ebce556-9fd2-46e2-871e-aef64418336d' : ComponentExchangeFunctionalExchangeAllocation
                                allocate functionalExchange ::> 'Physical Functions'::'Root Physical Function'.'Provide Stopping'.'bfc10a00-2b64-45c7-a123-a1ba15555a46'
                                to componentExchange ::> 'bace771b-876b-4462-b24f-3490936f8ba0' { 
                                @CapellaID { eid = "3ebce556-9fd2-46e2-871e-aef64418336d"; } 
                            }  
                            ref :>> ownedComponentExchangeFunctionalExchangeAllocations =  ('3ebce556-9fd2-46e2-871e-aef64418336d'); 
                        }  
                        interface '91075803-d3b4-4fcd-85de-78c212c4b9ee' : ComponentExchange 
                            connect source ::> 'Left Front Pad'.'CP 2'
                            to  target ::> 'Front Rotor'.'CP 2' { 
                            @CapellaID { eid = "91075803-d3b4-4fcd-85de-78c212c4b9ee"; } 
                            attribute :>> kind = ComponentExchangeKind::FLOW; 
                            attribute :>> interfaceName = "C 7"; 
                            attribute :>> isOriented = false; 
                            allocation '098f5c2b-6d84-4fe2-a311-b231f4e1af9b' : ComponentExchangeFunctionalExchangeAllocation
                                allocate functionalExchange ::> 'Physical Functions'::'Root Physical Function'.'Provide Stopping'.'395b900a-d34f-4be7-80c8-2c6afe562246'
                                to componentExchange ::> '91075803-d3b4-4fcd-85de-78c212c4b9ee' { 
                                @CapellaID { eid = "098f5c2b-6d84-4fe2-a311-b231f4e1af9b"; } 
                            }  
                            ref :>> ownedComponentExchangeFunctionalExchangeAllocations =  ('098f5c2b-6d84-4fe2-a311-b231f4e1af9b'); 
                        }  
                        interface '5c1502eb-74f4-449c-a5cf-9a88a0c1bd2b' : ComponentExchange 
                            connect source ::> 'Right Front Pad'.'CP 2'
                            to  target ::> 'Front Rotor'.'CP 3' { 
                            @CapellaID { eid = "5c1502eb-74f4-449c-a5cf-9a88a0c1bd2b"; } 
                            attribute :>> kind = ComponentExchangeKind::FLOW; 
                            attribute :>> interfaceName = "C 8"; 
                            attribute :>> isOriented = false; 
                        }  
                        part '5c5b2b0e-3a4e-4a9b-a7d6-3d17b41490f8' : CPart :> 'Front Caliper'  { 
                            @CapellaID { eid = "5c5b2b0e-3a4e-4a9b-a7d6-3d17b41490f8"; } 
                            attribute :>> aggregationKind = AggregationKind::UNSET; 
                            attribute :>> isFinal = false; 
                            attribute :>> isAbstract = false; 
                            attribute :>> isDerived = false; 
                            attribute :>> isPartOfKey = false; 
                            attribute :>> isReadOnly = false; 
                            attribute :>> isStatic = false; 
                            attribute :>> isMaxInclusive = false; 
                            attribute :>> isMinInclusive = false; 
                            attribute :>> isOrdered = false; 
                            attribute :>> isUnique = false; 
                        }  
                        part '600a1858-f4dd-4d21-9f30-aa26de19d21c' : CPart :> 'Left Front Pad'  { 
                            @CapellaID { eid = "600a1858-f4dd-4d21-9f30-aa26de19d21c"; } 
                            attribute :>> aggregationKind = AggregationKind::UNSET; 
                            attribute :>> isFinal = false; 
                            attribute :>> isAbstract = false; 
                            attribute :>> isDerived = false; 
                            attribute :>> isPartOfKey = false; 
                            attribute :>> isReadOnly = false; 
                            attribute :>> isStatic = false; 
                            attribute :>> isMaxInclusive = false; 
                            attribute :>> isMinInclusive = false; 
                            attribute :>> isOrdered = false; 
                            attribute :>> isUnique = false; 
                        }  
                        part '49098fc0-a745-4266-8374-483f4f9ea64a' : CPart :> 'Right Front Pad'  { 
                            @CapellaID { eid = "49098fc0-a745-4266-8374-483f4f9ea64a"; } 
                            attribute :>> aggregationKind = AggregationKind::UNSET; 
                            attribute :>> isFinal = false; 
                            attribute :>> isAbstract = false; 
                            attribute :>> isDerived = false; 
                            attribute :>> isPartOfKey = false; 
                            attribute :>> isReadOnly = false; 
                            attribute :>> isStatic = false; 
                            attribute :>> isMaxInclusive = false; 
                            attribute :>> isMinInclusive = false; 
                            attribute :>> isOrdered = false; 
                            attribute :>> isUnique = false; 
                        }  
                        part '2913e4ec-3772-45b8-83b2-7fc1cb778db2' : CPart :> 'Rear Caliper'  { 
                            @CapellaID { eid = "2913e4ec-3772-45b8-83b2-7fc1cb778db2"; } 
                            attribute :>> aggregationKind = AggregationKind::UNSET; 
                            attribute :>> isFinal = false; 
                            attribute :>> isAbstract = false; 
                            attribute :>> isDerived = false; 
                            attribute :>> isPartOfKey = false; 
                            attribute :>> isReadOnly = false; 
                            attribute :>> isStatic = false; 
                            attribute :>> isMaxInclusive = false; 
                            attribute :>> isMinInclusive = false; 
                            attribute :>> isOrdered = false; 
                            attribute :>> isUnique = false; 
                        }  
                        part '76041b75-b3ad-47c9-9894-fc6fec802003' : CPart :> 'Left Rear Pad'  { 
                            @CapellaID { eid = "76041b75-b3ad-47c9-9894-fc6fec802003"; } 
                            attribute :>> aggregationKind = AggregationKind::UNSET; 
                            attribute :>> isFinal = false; 
                            attribute :>> isAbstract = false; 
                            attribute :>> isDerived = false; 
                            attribute :>> isPartOfKey = false; 
                            attribute :>> isReadOnly = false; 
                            attribute :>> isStatic = false; 
                            attribute :>> isMaxInclusive = false; 
                            attribute :>> isMinInclusive = false; 
                            attribute :>> isOrdered = false; 
                            attribute :>> isUnique = false; 
                        }  
                        part '48ca53d3-3117-43b6-ba87-56c6f6922fe6' : CPart :> 'Right Rear Pad'  { 
                            @CapellaID { eid = "48ca53d3-3117-43b6-ba87-56c6f6922fe6"; } 
                            attribute :>> aggregationKind = AggregationKind::UNSET; 
                            attribute :>> isFinal = false; 
                            attribute :>> isAbstract = false; 
                            attribute :>> isDerived = false; 
                            attribute :>> isPartOfKey = false; 
                            attribute :>> isReadOnly = false; 
                            attribute :>> isStatic = false; 
                            attribute :>> isMaxInclusive = false; 
                            attribute :>> isMinInclusive = false; 
                            attribute :>> isOrdered = false; 
                            attribute :>> isUnique = false; 
                        }  
                        part '23be4cf1-6a33-41c1-bb6e-b7c701469af1' : CPart :> 'Rear Rotor'  { 
                            @CapellaID { eid = "23be4cf1-6a33-41c1-bb6e-b7c701469af1"; } 
                            attribute :>> aggregationKind = AggregationKind::UNSET; 
                            attribute :>> isFinal = false; 
                            attribute :>> isAbstract = false; 
                            attribute :>> isDerived = false; 
                            attribute :>> isPartOfKey = false; 
                            attribute :>> isReadOnly = false; 
                            attribute :>> isStatic = false; 
                            attribute :>> isMaxInclusive = false; 
                            attribute :>> isMinInclusive = false; 
                            attribute :>> isOrdered = false; 
                            attribute :>> isUnique = false; 
                        }  
                        part 'b14b7782-a053-41f6-9430-4445ea3458f3' : CPart :> 'Front Rotor'  { 
                            @CapellaID { eid = "b14b7782-a053-41f6-9430-4445ea3458f3"; } 
                            attribute :>> aggregationKind = AggregationKind::UNSET; 
                            attribute :>> isFinal = false; 
                            attribute :>> isAbstract = false; 
                            attribute :>> isDerived = false; 
                            attribute :>> isPartOfKey = false; 
                            attribute :>> isReadOnly = false; 
                            attribute :>> isStatic = false; 
                            attribute :>> isMaxInclusive = false; 
                            attribute :>> isMinInclusive = false; 
                            attribute :>> isOrdered = false; 
                            attribute :>> isUnique = false; 
                        }  
                        dependency '52fb2126-d010-4f89-a91e-076610368020'
                            from 'Wheels and Tires'::'9490c4c8-214c-403c-b7d2-4ad80bde4cf2'
                            to  'Logical Architecture'::'Structure'::'Braking System'::'Break Actuation Subsystem '::'4a8c9742-49fb-420f-98bf-f76e37587bff' { 
                            @TransfoLink { 
                                @CapellaID { eid = "52fb2126-d010-4f89-a91e-076610368020"; } 
                            }  
                        }  
                        dependency '95647a47-9357-4742-b63f-ecfff30e100a'
                            from '7fd449e5-44f2-44ba-9521-33c64adccd5f'
                            to  'Logical Architecture'::'Structure'::'Braking System'::'Break Actuation Subsystem '::'b0c87687-7733-482b-9421-7a94107b3894' { 
                            @TransfoLink { 
                                @CapellaID { eid = "95647a47-9357-4742-b63f-ecfff30e100a"; } 
                            }  
                        }  
                        part 'Front Caliper' : PhysicalComponent { 
                            @CapellaID { eid = "852016b5-37b8-4d3b-87d0-643c1fcf5c4c"; } 
                            attribute :>> isAbstract = false; 
                            attribute :>> isActor = false; 
                            attribute :>> isHuman = false; 
                            attribute :>> kind = PhysicalComponentKind::UNSET; 
                            attribute :>> nature = PhysicalComponentNature::BEHAVIOR; 
                            allocation '5e1ae263-7b03-4d6f-b53c-89ff0dcf675f' : ComponentFunctionalAllocation
                                allocate function ::> 'Physical Functions'::'Root Physical Function'.'Provide Stopping'.'Receive Force'.'Receive Front Force'
                                to component ::> 'Front Caliper' { 
                                @CapellaID { eid = "5e1ae263-7b03-4d6f-b53c-89ff0dcf675f"; } 
                            } 
                            perform 'Physical Functions'::'Root Physical Function'.'Provide Stopping'.'Receive Force'.'Receive Front Force' ; 
                            allocation '5e1716ec-adc8-4ea7-8ecc-26f18c0ae9cc' : ComponentFunctionalAllocation
                                allocate function ::> 'Physical Functions'::'Root Physical Function'.'Provide Stopping'.'Amplify Force'.'Amplify Front Force'
                                to component ::> 'Front Caliper' { 
                                @CapellaID { eid = "5e1716ec-adc8-4ea7-8ecc-26f18c0ae9cc"; } 
                            } 
                            perform 'Physical Functions'::'Root Physical Function'.'Provide Stopping'.'Amplify Force'.'Amplify Front Force' ; 
                            allocation '9556da34-9ba6-4f2d-bd21-ba74ae0f0d32' : ComponentFunctionalAllocation
                                allocate function ::> 'Physical Functions'::'Root Physical Function'.'Receive Support'
                                to component ::> 'Front Caliper' { 
                                @CapellaID { eid = "9556da34-9ba6-4f2d-bd21-ba74ae0f0d32"; } 
                            } 
                            perform 'Physical Functions'::'Root Physical Function'.'Receive Support' ; 
                            port 'CP 1' : ComponentPort { 
                                @CapellaID { eid = "97c8bf05-3795-4ad0-871f-fdb763c9af25"; } 
                                attribute :>> aggregationKind = AggregationKind::UNSET; 
                                attribute :>> isFinal = false; 
                                attribute :>> isAbstract = false; 
                                attribute :>> isDerived = false; 
                                attribute :>> isPartOfKey = false; 
                                attribute :>> isReadOnly = false; 
                                attribute :>> isStatic = false; 
                                attribute :>> kind = ComponentPortKind::FLOW; 
                                attribute :>> isMaxInclusive = false; 
                                attribute :>> isMinInclusive = false; 
                                attribute :>> isOrdered = false; 
                                attribute :>> orientation = OrientationPortKind::IN; 
                                attribute :>> isUnique = false; 
                                ref allocation 'dcac9a6b-31f5-4f1e-a069-e2907d19c5f4' : PortAllocation
                                    allocate allocatedPort ::> 'Physical Functions'::'Root Physical Function'.'Provide Stopping'.'Receive Force'.'Receive Front Force'.'FIP 1'
                                    to allocatingPort ::> 'CP 1'; 
                                ref :>> ownedPortAllocations =  ('dcac9a6b-31f5-4f1e-a069-e2907d19c5f4'); 
                            }  
                            port 'CP 2' : ComponentPort { 
                                @CapellaID { eid = "b8b0aec1-7106-4357-852b-4838ed1525f2"; } 
                                attribute :>> aggregationKind = AggregationKind::UNSET; 
                                attribute :>> isFinal = false; 
                                attribute :>> isAbstract = false; 
                                attribute :>> isDerived = false; 
                                attribute :>> isPartOfKey = false; 
                                attribute :>> isReadOnly = false; 
                                attribute :>> isStatic = false; 
                                attribute :>> kind = ComponentPortKind::FLOW; 
                                attribute :>> isMaxInclusive = false; 
                                attribute :>> isMinInclusive = false; 
                                attribute :>> isOrdered = false; 
                                attribute :>> orientation = OrientationPortKind::OUT; 
                                attribute :>> isUnique = false; 
                                ref allocation 'f3da5732-5ac2-40d4-ab83-1bad7ac2e6c9' : PortAllocation
                                    allocate allocatedPort ::> 'Physical Functions'::'Root Physical Function'.'Provide Stopping'.'Amplify Force'.'Amplify Front Force'.'FOP 1'
                                    to allocatingPort ::> 'CP 2'; 
                                ref :>> ownedPortAllocations =  ('f3da5732-5ac2-40d4-ab83-1bad7ac2e6c9'); 
                            }  
                            port 'CP 3' : ComponentPort { 
                                @CapellaID { eid = "a042e703-507f-4704-b53b-9d4b1d892c61"; } 
                                attribute :>> aggregationKind = AggregationKind::UNSET; 
                                attribute :>> isFinal = false; 
                                attribute :>> isAbstract = false; 
                                attribute :>> isDerived = false; 
                                attribute :>> isPartOfKey = false; 
                                attribute :>> isReadOnly = false; 
                                attribute :>> isStatic = false; 
                                attribute :>> kind = ComponentPortKind::FLOW; 
                                attribute :>> isMaxInclusive = false; 
                                attribute :>> isMinInclusive = false; 
                                attribute :>> isOrdered = false; 
                                attribute :>> orientation = OrientationPortKind::OUT; 
                                attribute :>> isUnique = false; 
                                ref allocation '6111a716-6c63-4c89-b9e9-7960027c0cb1' : PortAllocation
                                    allocate allocatedPort ::> 'Physical Functions'::'Root Physical Function'.'Provide Stopping'.'Amplify Force'.'Amplify Front Force'.'FOP 1'
                                    to allocatingPort ::> 'CP 3'; 
                                ref :>> ownedPortAllocations =  ('6111a716-6c63-4c89-b9e9-7960027c0cb1'); 
                            }  
                            port 'CP 4' : ComponentPort { 
                                @CapellaID { eid = "659e8a17-b99a-49be-8152-9ce6ecd14913"; } 
                                attribute :>> aggregationKind = AggregationKind::UNSET; 
                                attribute :>> isFinal = false; 
                                attribute :>> isAbstract = false; 
                                attribute :>> isDerived = false; 
                                attribute :>> isPartOfKey = false; 
                                attribute :>> isReadOnly = false; 
                                attribute :>> isStatic = false; 
                                attribute :>> kind = ComponentPortKind::FLOW; 
                                attribute :>> isMaxInclusive = false; 
                                attribute :>> isMinInclusive = false; 
                                attribute :>> isOrdered = false; 
                                attribute :>> orientation = OrientationPortKind::IN; 
                                attribute :>> isUnique = false; 
                            }  
                            ref :>> ownedFunctionalAllocation =  ('5e1ae263-7b03-4d6f-b53c-89ff0dcf675f',
                            '5e1716ec-adc8-4ea7-8ecc-26f18c0ae9cc',
                            '9556da34-9ba6-4f2d-bd21-ba74ae0f0d32'); 
                        }  
                        part 'Left Front Pad' : PhysicalComponent { 
                            @CapellaID { eid = "7593bee7-67b6-436c-9807-09c4f1d91c0e"; } 
                            attribute :>> isAbstract = false; 
                            attribute :>> isActor = false; 
                            attribute :>> isHuman = false; 
                            attribute :>> kind = PhysicalComponentKind::UNSET; 
                            attribute :>> nature = PhysicalComponentNature::BEHAVIOR; 
                            allocation 'ef56e146-cbb5-4393-bd62-9ad4cd1f62cf' : ComponentFunctionalAllocation
                                allocate function ::> 'Physical Functions'::'Root Physical Function'.'Provide Stopping'.'Position Pads'.'Position Front Left pad'
                                to component ::> 'Left Front Pad' { 
                                @CapellaID { eid = "ef56e146-cbb5-4393-bd62-9ad4cd1f62cf"; } 
                            } 
                            perform 'Physical Functions'::'Root Physical Function'.'Provide Stopping'.'Position Pads'.'Position Front Left pad' ; 
                            port 'CP 1' : ComponentPort { 
                                @CapellaID { eid = "615b4df2-42ae-432b-84c0-07adf4534c05"; } 
                                attribute :>> aggregationKind = AggregationKind::UNSET; 
                                attribute :>> isFinal = false; 
                                attribute :>> isAbstract = false; 
                                attribute :>> isDerived = false; 
                                attribute :>> isPartOfKey = false; 
                                attribute :>> isReadOnly = false; 
                                attribute :>> isStatic = false; 
                                attribute :>> kind = ComponentPortKind::FLOW; 
                                attribute :>> isMaxInclusive = false; 
                                attribute :>> isMinInclusive = false; 
                                attribute :>> isOrdered = false; 
                                attribute :>> orientation = OrientationPortKind::IN; 
                                attribute :>> isUnique = false; 
                                ref allocation '52de7279-e16b-427d-bb46-0216bdf8bb77' : PortAllocation
                                    allocate allocatedPort ::> 'Physical Functions'::'Root Physical Function'.'Provide Stopping'.'Position Pads'.'Position Front Left pad'.'FIP 1'
                                    to allocatingPort ::> 'CP 1'; 
                                ref :>> ownedPortAllocations =  ('52de7279-e16b-427d-bb46-0216bdf8bb77'); 
                            }  
                            port 'CP 2' : ComponentPort { 
                                @CapellaID { eid = "e51c61c2-a03f-42bc-9384-b56c203d01de"; } 
                                attribute :>> aggregationKind = AggregationKind::UNSET; 
                                attribute :>> isFinal = false; 
                                attribute :>> isAbstract = false; 
                                attribute :>> isDerived = false; 
                                attribute :>> isPartOfKey = false; 
                                attribute :>> isReadOnly = false; 
                                attribute :>> isStatic = false; 
                                attribute :>> kind = ComponentPortKind::FLOW; 
                                attribute :>> isMaxInclusive = false; 
                                attribute :>> isMinInclusive = false; 
                                attribute :>> isOrdered = false; 
                                attribute :>> orientation = OrientationPortKind::OUT; 
                                attribute :>> isUnique = false; 
                                ref allocation '6f3b1c50-223b-47f4-935a-7994a5b8a2ce' : PortAllocation
                                    allocate allocatedPort ::> 'Physical Functions'::'Root Physical Function'.'Provide Stopping'.'Position Pads'.'Position Front Left pad'.'FOP 1'
                                    to allocatingPort ::> 'CP 2'; 
                                ref :>> ownedPortAllocations =  ('6f3b1c50-223b-47f4-935a-7994a5b8a2ce'); 
                            }  
                            ref :>> ownedFunctionalAllocation =  ('ef56e146-cbb5-4393-bd62-9ad4cd1f62cf'); 
                        }  
                        part 'Right Front Pad' : PhysicalComponent { 
                            @CapellaID { eid = "c05bf7e4-0cc6-45a3-bf27-e6e393c8d393"; } 
                            attribute :>> isAbstract = false; 
                            attribute :>> isActor = false; 
                            attribute :>> isHuman = false; 
                            attribute :>> kind = PhysicalComponentKind::UNSET; 
                            attribute :>> nature = PhysicalComponentNature::BEHAVIOR; 
                            allocation '3a3d873c-aa28-4111-a3ce-6c649f555f67' : ComponentFunctionalAllocation
                                allocate function ::> 'Physical Functions'::'Root Physical Function'.'Provide Stopping'.'Position Pads'.'Position Front Right Pad'
                                to component ::> 'Right Front Pad' { 
                                @CapellaID { eid = "3a3d873c-aa28-4111-a3ce-6c649f555f67"; } 
                            } 
                            perform 'Physical Functions'::'Root Physical Function'.'Provide Stopping'.'Position Pads'.'Position Front Right Pad' ; 
                            port 'CP 1' : ComponentPort { 
                                @CapellaID { eid = "f703def9-74b4-4382-8014-2730310fa7af"; } 
                                attribute :>> aggregationKind = AggregationKind::UNSET; 
                                attribute :>> isFinal = false; 
                                attribute :>> isAbstract = false; 
                                attribute :>> isDerived = false; 
                                attribute :>> isPartOfKey = false; 
                                attribute :>> isReadOnly = false; 
                                attribute :>> isStatic = false; 
                                attribute :>> kind = ComponentPortKind::FLOW; 
                                attribute :>> isMaxInclusive = false; 
                                attribute :>> isMinInclusive = false; 
                                attribute :>> isOrdered = false; 
                                attribute :>> orientation = OrientationPortKind::IN; 
                                attribute :>> isUnique = false; 
                                ref allocation '636f3fdc-b442-4514-8bf6-e5c2378c86d7' : PortAllocation
                                    allocate allocatedPort ::> 'Physical Functions'::'Root Physical Function'.'Provide Stopping'.'Position Pads'.'Position Front Right Pad'.'FIP 1'
                                    to allocatingPort ::> 'CP 1'; 
                                ref :>> ownedPortAllocations =  ('636f3fdc-b442-4514-8bf6-e5c2378c86d7'); 
                            }  
                            port 'CP 2' : ComponentPort { 
                                @CapellaID { eid = "47144536-95d2-4596-bbf2-2fce3f1d55ba"; } 
                                attribute :>> aggregationKind = AggregationKind::UNSET; 
                                attribute :>> isFinal = false; 
                                attribute :>> isAbstract = false; 
                                attribute :>> isDerived = false; 
                                attribute :>> isPartOfKey = false; 
                                attribute :>> isReadOnly = false; 
                                attribute :>> isStatic = false; 
                                attribute :>> kind = ComponentPortKind::FLOW; 
                                attribute :>> isMaxInclusive = false; 
                                attribute :>> isMinInclusive = false; 
                                attribute :>> isOrdered = false; 
                                attribute :>> orientation = OrientationPortKind::OUT; 
                                attribute :>> isUnique = false; 
                            }  
                            ref :>> ownedFunctionalAllocation =  ('3a3d873c-aa28-4111-a3ce-6c649f555f67'); 
                        }  
                        part 'Rear Caliper' : PhysicalComponent { 
                            @CapellaID { eid = "188641e9-162f-4b86-b606-447437c65954"; } 
                            attribute :>> isAbstract = false; 
                            attribute :>> isActor = false; 
                            attribute :>> isHuman = false; 
                            attribute :>> kind = PhysicalComponentKind::UNSET; 
                            attribute :>> nature = PhysicalComponentNature::BEHAVIOR; 
                            allocation '0b4c1bd2-2a67-4244-863e-2c8870859437' : ComponentFunctionalAllocation
                                allocate function ::> 'Physical Functions'::'Root Physical Function'.'Provide Stopping'.'Receive Force'.'Receive Rear Force'
                                to component ::> 'Rear Caliper' { 
                                @CapellaID { eid = "0b4c1bd2-2a67-4244-863e-2c8870859437"; } 
                            } 
                            perform 'Physical Functions'::'Root Physical Function'.'Provide Stopping'.'Receive Force'.'Receive Rear Force' ; 
                            allocation '21c78988-aa05-42b9-afeb-f64cb0019a28' : ComponentFunctionalAllocation
                                allocate function ::> 'Physical Functions'::'Root Physical Function'.'Provide Stopping'.'Amplify Force'.'Amplify Rear Force'
                                to component ::> 'Rear Caliper' { 
                                @CapellaID { eid = "21c78988-aa05-42b9-afeb-f64cb0019a28"; } 
                            } 
                            perform 'Physical Functions'::'Root Physical Function'.'Provide Stopping'.'Amplify Force'.'Amplify Rear Force' ; 
                            allocation '161b827f-3ad4-4a2f-92c6-cea6e93f82a5' : ComponentFunctionalAllocation
                                allocate function ::> 'Physical Functions'::'Root Physical Function'.'Receive Support'
                                to component ::> 'Rear Caliper' { 
                                @CapellaID { eid = "161b827f-3ad4-4a2f-92c6-cea6e93f82a5"; } 
                            } 
                            perform 'Physical Functions'::'Root Physical Function'.'Receive Support' ; 
                            port 'CP 1' : ComponentPort { 
                                @CapellaID { eid = "efefcfcc-6545-4d03-a2c3-59ea0a79871a"; } 
                                attribute :>> aggregationKind = AggregationKind::UNSET; 
                                attribute :>> isFinal = false; 
                                attribute :>> isAbstract = false; 
                                attribute :>> isDerived = false; 
                                attribute :>> isPartOfKey = false; 
                                attribute :>> isReadOnly = false; 
                                attribute :>> isStatic = false; 
                                attribute :>> kind = ComponentPortKind::FLOW; 
                                attribute :>> isMaxInclusive = false; 
                                attribute :>> isMinInclusive = false; 
                                attribute :>> isOrdered = false; 
                                attribute :>> orientation = OrientationPortKind::IN; 
                                attribute :>> isUnique = false; 
                                ref allocation 'ddcace30-5b44-4dcf-ba72-0e5147abb576' : PortAllocation
                                    allocate allocatedPort ::> 'Physical Functions'::'Root Physical Function'.'Provide Stopping'.'Receive Force'.'Receive Rear Force'.'FIP 1'
                                    to allocatingPort ::> 'CP 1'; 
                                ref :>> ownedPortAllocations =  ('ddcace30-5b44-4dcf-ba72-0e5147abb576'); 
                            }  
                            port 'CP 2' : ComponentPort { 
                                @CapellaID { eid = "ff5db1cf-473c-41da-88d0-a594246f79f5"; } 
                                attribute :>> aggregationKind = AggregationKind::UNSET; 
                                attribute :>> isFinal = false; 
                                attribute :>> isAbstract = false; 
                                attribute :>> isDerived = false; 
                                attribute :>> isPartOfKey = false; 
                                attribute :>> isReadOnly = false; 
                                attribute :>> isStatic = false; 
                                attribute :>> kind = ComponentPortKind::FLOW; 
                                attribute :>> isMaxInclusive = false; 
                                attribute :>> isMinInclusive = false; 
                                attribute :>> isOrdered = false; 
                                attribute :>> orientation = OrientationPortKind::OUT; 
                                attribute :>> isUnique = false; 
                                ref allocation '1a6ec1bf-9e82-4025-bf9b-e6783afe290f' : PortAllocation
                                    allocate allocatedPort ::> 'Physical Functions'::'Root Physical Function'.'Provide Stopping'.'Amplify Force'.'Amplify Rear Force'.'FOP 1'
                                    to allocatingPort ::> 'CP 2'; 
                                ref :>> ownedPortAllocations =  ('1a6ec1bf-9e82-4025-bf9b-e6783afe290f'); 
                            }  
                            port 'CP 3' : ComponentPort { 
                                @CapellaID { eid = "16d01027-19a7-416e-89b9-4a97dddf6fd7"; } 
                                attribute :>> aggregationKind = AggregationKind::UNSET; 
                                attribute :>> isFinal = false; 
                                attribute :>> isAbstract = false; 
                                attribute :>> isDerived = false; 
                                attribute :>> isPartOfKey = false; 
                                attribute :>> isReadOnly = false; 
                                attribute :>> isStatic = false; 
                                attribute :>> kind = ComponentPortKind::FLOW; 
                                attribute :>> isMaxInclusive = false; 
                                attribute :>> isMinInclusive = false; 
                                attribute :>> isOrdered = false; 
                                attribute :>> orientation = OrientationPortKind::OUT; 
                                attribute :>> isUnique = false; 
                                ref allocation '28569f9f-6ab5-4574-a9d3-e00715f4f096' : PortAllocation
                                    allocate allocatedPort ::> 'Physical Functions'::'Root Physical Function'.'Provide Stopping'.'Amplify Force'.'Amplify Rear Force'.'FOP 1'
                                    to allocatingPort ::> 'CP 3'; 
                                ref :>> ownedPortAllocations =  ('28569f9f-6ab5-4574-a9d3-e00715f4f096'); 
                            }  
                            port 'CP 4' : ComponentPort { 
                                @CapellaID { eid = "c4597ad1-15c8-443d-a073-a30cc4704105"; } 
                                attribute :>> aggregationKind = AggregationKind::UNSET; 
                                attribute :>> isFinal = false; 
                                attribute :>> isAbstract = false; 
                                attribute :>> isDerived = false; 
                                attribute :>> isPartOfKey = false; 
                                attribute :>> isReadOnly = false; 
                                attribute :>> isStatic = false; 
                                attribute :>> kind = ComponentPortKind::FLOW; 
                                attribute :>> isMaxInclusive = false; 
                                attribute :>> isMinInclusive = false; 
                                attribute :>> isOrdered = false; 
                                attribute :>> orientation = OrientationPortKind::IN; 
                                attribute :>> isUnique = false; 
                                ref allocation 'ce88db36-fbcc-45ec-abda-4e3db2307481' : PortAllocation
                                    allocate allocatedPort ::> 'Physical Functions'::'Root Physical Function'.'Receive Support'.'FIP 1'
                                    to allocatingPort ::> 'CP 4'; 
                                ref :>> ownedPortAllocations =  ('ce88db36-fbcc-45ec-abda-4e3db2307481'); 
                            }  
                            ref :>> ownedFunctionalAllocation =  ('0b4c1bd2-2a67-4244-863e-2c8870859437',
                            '21c78988-aa05-42b9-afeb-f64cb0019a28',
                            '161b827f-3ad4-4a2f-92c6-cea6e93f82a5'); 
                        }  
                        part 'Left Rear Pad' : PhysicalComponent { 
                            @CapellaID { eid = "24940014-0278-4c3a-8927-9200b245db0a"; } 
                            attribute :>> isAbstract = false; 
                            attribute :>> isActor = false; 
                            attribute :>> isHuman = false; 
                            attribute :>> kind = PhysicalComponentKind::UNSET; 
                            attribute :>> nature = PhysicalComponentNature::BEHAVIOR; 
                            allocation '4e617e8a-1fc2-46ce-b5ed-99d7e3e1c0a4' : ComponentFunctionalAllocation
                                allocate function ::> 'Physical Functions'::'Root Physical Function'.'Provide Stopping'.'Position Pads'.'Position Rear Right Pad '
                                to component ::> 'Left Rear Pad' { 
                                @CapellaID { eid = "4e617e8a-1fc2-46ce-b5ed-99d7e3e1c0a4"; } 
                            } 
                            perform 'Physical Functions'::'Root Physical Function'.'Provide Stopping'.'Position Pads'.'Position Rear Right Pad ' ; 
                            port 'CP 1' : ComponentPort { 
                                @CapellaID { eid = "f1e320b0-11b5-4d93-a31f-353cd3f4826d"; } 
                                attribute :>> aggregationKind = AggregationKind::UNSET; 
                                attribute :>> isFinal = false; 
                                attribute :>> isAbstract = false; 
                                attribute :>> isDerived = false; 
                                attribute :>> isPartOfKey = false; 
                                attribute :>> isReadOnly = false; 
                                attribute :>> isStatic = false; 
                                attribute :>> kind = ComponentPortKind::FLOW; 
                                attribute :>> isMaxInclusive = false; 
                                attribute :>> isMinInclusive = false; 
                                attribute :>> isOrdered = false; 
                                attribute :>> orientation = OrientationPortKind::IN; 
                                attribute :>> isUnique = false; 
                                ref allocation 'ce3c6810-c4bd-400f-b861-8ed59a28fd23' : PortAllocation
                                    allocate allocatedPort ::> 'Physical Functions'::'Root Physical Function'.'Provide Stopping'.'Position Pads'.'Position Rear Right Pad '.'FIP 1'
                                    to allocatingPort ::> 'CP 1'; 
                                ref :>> ownedPortAllocations =  ('ce3c6810-c4bd-400f-b861-8ed59a28fd23'); 
                            }  
                            port 'CP 2' : ComponentPort { 
                                @CapellaID { eid = "1b079a10-1fe0-402e-89dc-ad138e9676b4"; } 
                                attribute :>> aggregationKind = AggregationKind::UNSET; 
                                attribute :>> isFinal = false; 
                                attribute :>> isAbstract = false; 
                                attribute :>> isDerived = false; 
                                attribute :>> isPartOfKey = false; 
                                attribute :>> isReadOnly = false; 
                                attribute :>> isStatic = false; 
                                attribute :>> kind = ComponentPortKind::FLOW; 
                                attribute :>> isMaxInclusive = false; 
                                attribute :>> isMinInclusive = false; 
                                attribute :>> isOrdered = false; 
                                attribute :>> orientation = OrientationPortKind::OUT; 
                                attribute :>> isUnique = false; 
                                ref allocation '77bbd36e-abcb-405b-9be5-a82991f1e94e' : PortAllocation
                                    allocate allocatedPort ::> 'Physical Functions'::'Root Physical Function'.'Provide Stopping'.'Position Pads'.'Position Rear Right Pad '.'FOP 1'
                                    to allocatingPort ::> 'CP 2'; 
                                ref :>> ownedPortAllocations =  ('77bbd36e-abcb-405b-9be5-a82991f1e94e'); 
                            }  
                            ref :>> ownedFunctionalAllocation =  ('4e617e8a-1fc2-46ce-b5ed-99d7e3e1c0a4'); 
                        }  
                        part 'Right Rear Pad' : PhysicalComponent { 
                            @CapellaID { eid = "e091b12b-0d97-479c-8379-0ba391ca42cf"; } 
                            attribute :>> isAbstract = false; 
                            attribute :>> isActor = false; 
                            attribute :>> isHuman = false; 
                            attribute :>> kind = PhysicalComponentKind::UNSET; 
                            attribute :>> nature = PhysicalComponentNature::BEHAVIOR; 
                            allocation '7ec1ad4c-17d9-4ba1-bda3-44e6cdebba8f' : ComponentFunctionalAllocation
                                allocate function ::> 'Physical Functions'::'Root Physical Function'.'Provide Stopping'.'Position Pads'.'Position Rear Left Pad'
                                to component ::> 'Right Rear Pad' { 
                                @CapellaID { eid = "7ec1ad4c-17d9-4ba1-bda3-44e6cdebba8f"; } 
                            } 
                            perform 'Physical Functions'::'Root Physical Function'.'Provide Stopping'.'Position Pads'.'Position Rear Left Pad' ; 
                            port 'CP 1' : ComponentPort { 
                                @CapellaID { eid = "8a5664e0-9817-405d-9956-d69bea101535"; } 
                                attribute :>> aggregationKind = AggregationKind::UNSET; 
                                attribute :>> isFinal = false; 
                                attribute :>> isAbstract = false; 
                                attribute :>> isDerived = false; 
                                attribute :>> isPartOfKey = false; 
                                attribute :>> isReadOnly = false; 
                                attribute :>> isStatic = false; 
                                attribute :>> kind = ComponentPortKind::FLOW; 
                                attribute :>> isMaxInclusive = false; 
                                attribute :>> isMinInclusive = false; 
                                attribute :>> isOrdered = false; 
                                attribute :>> orientation = OrientationPortKind::IN; 
                                attribute :>> isUnique = false; 
                                ref allocation '5a98c992-29ca-4af1-a753-bfa74a689d35' : PortAllocation
                                    allocate allocatedPort ::> 'Physical Functions'::'Root Physical Function'.'Provide Stopping'.'Position Pads'.'Position Rear Left Pad'.'FIP 1'
                                    to allocatingPort ::> 'CP 1'; 
                                ref :>> ownedPortAllocations =  ('5a98c992-29ca-4af1-a753-bfa74a689d35'); 
                            }  
                            port 'CP 2' : ComponentPort { 
                                @CapellaID { eid = "228f5aa6-8dc3-461f-832c-0c82dd531c2a"; } 
                                attribute :>> aggregationKind = AggregationKind::UNSET; 
                                attribute :>> isFinal = false; 
                                attribute :>> isAbstract = false; 
                                attribute :>> isDerived = false; 
                                attribute :>> isPartOfKey = false; 
                                attribute :>> isReadOnly = false; 
                                attribute :>> isStatic = false; 
                                attribute :>> kind = ComponentPortKind::FLOW; 
                                attribute :>> isMaxInclusive = false; 
                                attribute :>> isMinInclusive = false; 
                                attribute :>> isOrdered = false; 
                                attribute :>> orientation = OrientationPortKind::OUT; 
                                attribute :>> isUnique = false; 
                                ref allocation '91acbaa5-24ce-4995-bd5d-b7a9ed0d77dc' : PortAllocation
                                    allocate allocatedPort ::> 'Physical Functions'::'Root Physical Function'.'Provide Stopping'.'Position Pads'.'Position Rear Left Pad'.'FOP 1'
                                    to allocatingPort ::> 'CP 2'; 
                                ref :>> ownedPortAllocations =  ('91acbaa5-24ce-4995-bd5d-b7a9ed0d77dc'); 
                            }  
                            ref :>> ownedFunctionalAllocation =  ('7ec1ad4c-17d9-4ba1-bda3-44e6cdebba8f'); 
                        }  
                        part 'Rear Rotor' : PhysicalComponent { 
                            @CapellaID { eid = "58720d24-3cdf-4aa1-80c9-b8ad2206114d"; } 
                            attribute :>> isAbstract = false; 
                            attribute :>> isActor = false; 
                            attribute :>> isHuman = false; 
                            attribute :>> kind = PhysicalComponentKind::UNSET; 
                            attribute :>> nature = PhysicalComponentNature::BEHAVIOR; 
                            allocation 'ed40a739-bf85-44f4-8b63-40dbe270a327' : ComponentFunctionalAllocation
                                allocate function ::> 'Physical Functions'::'Root Physical Function'.'Provide Stopping'.'Friction to Rotors'.'Convert Friction Force to Stopping Torque'
                                to component ::> 'Rear Rotor' { 
                                @CapellaID { eid = "ed40a739-bf85-44f4-8b63-40dbe270a327"; } 
                            } 
                            perform 'Physical Functions'::'Root Physical Function'.'Provide Stopping'.'Friction to Rotors'.'Convert Friction Force to Stopping Torque' ; 
                            port 'CP 1' : ComponentPort { 
                                @CapellaID { eid = "2cc19c40-e947-466d-99a2-7d14d6f4a161"; } 
                                attribute :>> aggregationKind = AggregationKind::UNSET; 
                                attribute :>> isFinal = false; 
                                attribute :>> isAbstract = false; 
                                attribute :>> isDerived = false; 
                                attribute :>> isPartOfKey = false; 
                                attribute :>> isReadOnly = false; 
                                attribute :>> isStatic = false; 
                                attribute :>> kind = ComponentPortKind::FLOW; 
                                attribute :>> isMaxInclusive = false; 
                                attribute :>> isMinInclusive = false; 
                                attribute :>> isOrdered = false; 
                                attribute :>> orientation = OrientationPortKind::IN; 
                                attribute :>> isUnique = false; 
                                ref allocation '454d2fdb-8dbb-4828-a0a3-ead65f5ce8b4' : PortAllocation
                                    allocate allocatedPort ::> 'Physical Functions'::'Root Physical Function'.'Provide Stopping'.'Friction to Rotors'.'Convert Friction Force to Stopping Torque'.'FIP 1'
                                    to allocatingPort ::> 'CP 1'; 
                                ref :>> ownedPortAllocations =  ('454d2fdb-8dbb-4828-a0a3-ead65f5ce8b4'); 
                            }  
                            port 'CP 2' : ComponentPort { 
                                @CapellaID { eid = "1f676239-665f-408e-99ec-5e7cad64dade"; } 
                                attribute :>> aggregationKind = AggregationKind::UNSET; 
                                attribute :>> isFinal = false; 
                                attribute :>> isAbstract = false; 
                                attribute :>> isDerived = false; 
                                attribute :>> isPartOfKey = false; 
                                attribute :>> isReadOnly = false; 
                                attribute :>> isStatic = false; 
                                attribute :>> kind = ComponentPortKind::FLOW; 
                                attribute :>> isMaxInclusive = false; 
                                attribute :>> isMinInclusive = false; 
                                attribute :>> isOrdered = false; 
                                attribute :>> orientation = OrientationPortKind::IN; 
                                attribute :>> isUnique = false; 
                                ref allocation '7af6446c-890b-45e0-b793-0c3dbc0ecff3' : PortAllocation
                                    allocate allocatedPort ::> 'Physical Functions'::'Root Physical Function'.'Provide Stopping'.'Friction to Rotors'.'Convert Friction Force to Stopping Torque'.'FIP 1'
                                    to allocatingPort ::> 'CP 2'; 
                                ref :>> ownedPortAllocations =  ('7af6446c-890b-45e0-b793-0c3dbc0ecff3'); 
                            }  
                            port 'CP 3' : ComponentPort { 
                                @CapellaID { eid = "5bd008ec-5006-4884-a708-7831a13bf574"; } 
                                attribute :>> aggregationKind = AggregationKind::UNSET; 
                                attribute :>> isFinal = false; 
                                attribute :>> isAbstract = false; 
                                attribute :>> isDerived = false; 
                                attribute :>> isPartOfKey = false; 
                                attribute :>> isReadOnly = false; 
                                attribute :>> isStatic = false; 
                                attribute :>> kind = ComponentPortKind::FLOW; 
                                attribute :>> isMaxInclusive = false; 
                                attribute :>> isMinInclusive = false; 
                                attribute :>> isOrdered = false; 
                                attribute :>> orientation = OrientationPortKind::OUT; 
                                attribute :>> isUnique = false; 
                                ref allocation 'a88fa93c-d6de-4195-9728-5489b54392c7' : PortAllocation
                                    allocate allocatedPort ::> 'Physical Functions'::'Root Physical Function'.'Provide Stopping'.'Friction to Rotors'.'Convert Friction Force to Stopping Torque'.'FOP 1'
                                    to allocatingPort ::> 'CP 3'; 
                                ref :>> ownedPortAllocations =  ('a88fa93c-d6de-4195-9728-5489b54392c7'); 
                            }  
                            ref :>> ownedFunctionalAllocation =  ('ed40a739-bf85-44f4-8b63-40dbe270a327'); 
                        }  
                        part 'Front Rotor' : PhysicalComponent { 
                            @CapellaID { eid = "1741f7e4-a760-4467-a7b3-62d85c416a40"; } 
                            attribute :>> isAbstract = false; 
                            attribute :>> isActor = false; 
                            attribute :>> isHuman = false; 
                            attribute :>> kind = PhysicalComponentKind::UNSET; 
                            attribute :>> nature = PhysicalComponentNature::BEHAVIOR; 
                            allocation 'bd75f685-feed-431a-8899-a0ff37832f67' : ComponentFunctionalAllocation
                                allocate function ::> 'Physical Functions'::'Root Physical Function'.'Provide Stopping'.'Friction to Rotors'.'Convert Friction Force to Stopping Torque'
                                to component ::> 'Front Rotor' { 
                                @CapellaID { eid = "bd75f685-feed-431a-8899-a0ff37832f67"; } 
                            } 
                            perform 'Physical Functions'::'Root Physical Function'.'Provide Stopping'.'Friction to Rotors'.'Convert Friction Force to Stopping Torque' ; 
                            port 'CP 1' : ComponentPort { 
                                @CapellaID { eid = "5c9a4642-d3ab-43e7-a34d-3a0ffcb63e4d"; } 
                                attribute :>> aggregationKind = AggregationKind::UNSET; 
                                attribute :>> isFinal = false; 
                                attribute :>> isAbstract = false; 
                                attribute :>> isDerived = false; 
                                attribute :>> isPartOfKey = false; 
                                attribute :>> isReadOnly = false; 
                                attribute :>> isStatic = false; 
                                attribute :>> kind = ComponentPortKind::FLOW; 
                                attribute :>> isMaxInclusive = false; 
                                attribute :>> isMinInclusive = false; 
                                attribute :>> isOrdered = false; 
                                attribute :>> orientation = OrientationPortKind::OUT; 
                                attribute :>> isUnique = false; 
                                ref allocation 'ce48f33e-b279-498b-bd4c-14d9bcd2456d' : PortAllocation
                                    allocate allocatedPort ::> 'Physical Functions'::'Root Physical Function'.'Provide Stopping'.'Friction to Rotors'.'Convert Friction Force to Stopping Torque'.'FOP 1'
                                    to allocatingPort ::> 'CP 1'; 
                                ref :>> ownedPortAllocations =  ('ce48f33e-b279-498b-bd4c-14d9bcd2456d'); 
                            }  
                            port 'CP 2' : ComponentPort { 
                                @CapellaID { eid = "832a5891-ef4c-4ff8-b6fc-3da6f19dffd5"; } 
                                attribute :>> aggregationKind = AggregationKind::UNSET; 
                                attribute :>> isFinal = false; 
                                attribute :>> isAbstract = false; 
                                attribute :>> isDerived = false; 
                                attribute :>> isPartOfKey = false; 
                                attribute :>> isReadOnly = false; 
                                attribute :>> isStatic = false; 
                                attribute :>> kind = ComponentPortKind::FLOW; 
                                attribute :>> isMaxInclusive = false; 
                                attribute :>> isMinInclusive = false; 
                                attribute :>> isOrdered = false; 
                                attribute :>> orientation = OrientationPortKind::IN; 
                                attribute :>> isUnique = false; 
                                ref allocation 'b6ada238-6417-40c1-9b65-fafa9ee8b574' : PortAllocation
                                    allocate allocatedPort ::> 'Physical Functions'::'Root Physical Function'.'Provide Stopping'.'Friction to Rotors'.'Convert Friction Force to Stopping Torque'.'FIP 2'
                                    to allocatingPort ::> 'CP 2'; 
                                ref :>> ownedPortAllocations =  ('b6ada238-6417-40c1-9b65-fafa9ee8b574'); 
                            }  
                            port 'CP 3' : ComponentPort { 
                                @CapellaID { eid = "c59d752f-f511-4df6-9654-705173ac290e"; } 
                                attribute :>> aggregationKind = AggregationKind::UNSET; 
                                attribute :>> isFinal = false; 
                                attribute :>> isAbstract = false; 
                                attribute :>> isDerived = false; 
                                attribute :>> isPartOfKey = false; 
                                attribute :>> isReadOnly = false; 
                                attribute :>> isStatic = false; 
                                attribute :>> kind = ComponentPortKind::FLOW; 
                                attribute :>> isMaxInclusive = false; 
                                attribute :>> isMinInclusive = false; 
                                attribute :>> isOrdered = false; 
                                attribute :>> orientation = OrientationPortKind::IN; 
                                attribute :>> isUnique = false; 
                            }  
                            ref :>> ownedFunctionalAllocation =  ('bd75f685-feed-431a-8899-a0ff37832f67'); 
                        }  
                        ref :>> ownedFunctionalAllocation =  ('7fd449e5-44f2-44ba-9521-33c64adccd5f'); 
                        ref :>> ownedComponentExchanges =  ('11f735aa-d971-4dec-9a6f-d03990c5a4c0',
                        '4e224658-886b-46b4-ac88-9196eb9bb25a',
                        'd3d0ccf0-064e-4009-a6ae-159270d750ec',
                        'e5766b5b-c867-4ea5-b26c-f66777e15a09',
                        '8fef87ab-be67-4971-8ebe-abf46919ac7f',
                        'bace771b-876b-4462-b24f-3490936f8ba0',
                        '91075803-d3b4-4fcd-85de-78c212c4b9ee',
                        '5c1502eb-74f4-449c-a5cf-9a88a0c1bd2b'); 
                         
                        ref :>> ownedPhysicalComponents =  ('Front Caliper',
                        'Left Front Pad',
                        'Right Front Pad',
                        'Rear Caliper',
                        'Left Rear Pad',
                        'Right Rear Pad',
                        'Rear Rotor',
                        'Front Rotor'); 
                    }  
                    part 'Force Transmission Subsystem' : PhysicalComponent { 
                        doc /*
                        <p>Example elements:</p>

                        <ul>
                        	<li>Force conduit (cable, hose)</li>
                        	<li>Modulation mechanism (e.g., hydraulic fluid or mechanical ratio adjusters)</li>
                        </ul>

                        */ 
                        @CapellaID { eid = "a47f1410-10a1-4947-81f1-d0e6619f3dc0"; } 
                        attribute :>> isAbstract = false; 
                        attribute :>> isActor = false; 
                        attribute :>> isHuman = false; 
                        attribute :>> kind = PhysicalComponentKind::UNSET; 
                        attribute :>> nature = PhysicalComponentNature::BEHAVIOR; 
                        allocation '0778a839-bfb9-45eb-b33a-c9b0a553920d' : ComponentFunctionalAllocation
                            allocate function ::> 'Physical Functions'::'Root Physical Function'.'Provide Stopping'.'Transmit Signal'
                            to component ::> 'Force Transmission Subsystem' { 
                            @CapellaID { eid = "0778a839-bfb9-45eb-b33a-c9b0a553920d"; } 
                        } 
                        perform 'Physical Functions'::'Root Physical Function'.'Provide Stopping'.'Transmit Signal' ; 
                        allocation 'da853f22-45c4-4786-a48a-a2de29fd2c2c' : ComponentFunctionalAllocation
                            allocate function ::> 'Physical Functions'::'Root Physical Function'.'Provide Stopping'.'Provide Backup'
                            to component ::> 'Force Transmission Subsystem' { 
                            @CapellaID { eid = "da853f22-45c4-4786-a48a-a2de29fd2c2c"; } 
                        } 
                        perform 'Physical Functions'::'Root Physical Function'.'Provide Stopping'.'Provide Backup' ; 
                        allocation 'b4f53fab-3804-4c6e-9dbb-245fbf69d5df' : ComponentFunctionalAllocation
                            allocate function ::> 'Physical Functions'::'Root Physical Function'.'Receive Environment'
                            to component ::> 'Force Transmission Subsystem' { 
                            @CapellaID { eid = "b4f53fab-3804-4c6e-9dbb-245fbf69d5df"; } 
                        } 
                        perform 'Physical Functions'::'Root Physical Function'.'Receive Environment' ; 
                        part '08080937-e02d-451f-833f-47a969aaa5e8' : CPart :> 'Front Hydraulic Line'  { 
                            @CapellaID { eid = "08080937-e02d-451f-833f-47a969aaa5e8"; } 
                            attribute :>> aggregationKind = AggregationKind::UNSET; 
                            attribute :>> isFinal = false; 
                            attribute :>> isAbstract = false; 
                            attribute :>> isDerived = false; 
                            attribute :>> isPartOfKey = false; 
                            attribute :>> isReadOnly = false; 
                            attribute :>> isStatic = false; 
                            attribute :>> isMaxInclusive = false; 
                            attribute :>> isMinInclusive = false; 
                            attribute :>> isOrdered = false; 
                            attribute :>> isUnique = false; 
                        }  
                        part '6af0adc7-7bea-41f6-bcb2-fd614f8fe036' : CPart :> 'Rear Hydraulic Line'  { 
                            @CapellaID { eid = "6af0adc7-7bea-41f6-bcb2-fd614f8fe036"; } 
                            attribute :>> aggregationKind = AggregationKind::UNSET; 
                            attribute :>> isFinal = false; 
                            attribute :>> isAbstract = false; 
                            attribute :>> isDerived = false; 
                            attribute :>> isPartOfKey = false; 
                            attribute :>> isReadOnly = false; 
                            attribute :>> isStatic = false; 
                            attribute :>> isMaxInclusive = false; 
                            attribute :>> isMinInclusive = false; 
                            attribute :>> isOrdered = false; 
                            attribute :>> isUnique = false; 
                        }  
                        dependency '07a2afb4-ff9f-41ea-963f-1ba0f9a6ac1c'
                            from '0778a839-bfb9-45eb-b33a-c9b0a553920d'
                            to  'Logical Architecture'::'Structure'::'Braking System'::'Force Transmission Subsystem'::'5e07e372-0550-4e87-9234-2e4ca09ffde8' { 
                            @TransfoLink { 
                                @CapellaID { eid = "07a2afb4-ff9f-41ea-963f-1ba0f9a6ac1c"; } 
                            }  
                        }  
                        dependency '58a69d39-3078-457d-bf16-c443d6d7e9ff'
                            from 'b4f53fab-3804-4c6e-9dbb-245fbf69d5df'
                            to  'Logical Architecture'::'Structure'::'Braking System'::'Force Transmission Subsystem'::'536e9bcb-947d-4149-ba3a-731d567b2ad8' { 
                            @TransfoLink { 
                                @CapellaID { eid = "58a69d39-3078-457d-bf16-c443d6d7e9ff"; } 
                            }  
                        }  
                        part 'Front Hydraulic Line' : PhysicalComponent { 
                            @CapellaID { eid = "1a7cb707-b99e-4c96-8837-4a292c48225f"; } 
                            attribute :>> isAbstract = false; 
                            attribute :>> isActor = false; 
                            attribute :>> isHuman = false; 
                            attribute :>> kind = PhysicalComponentKind::UNSET; 
                            attribute :>> nature = PhysicalComponentNature::BEHAVIOR; 
                            allocation '62c97623-0d40-49be-b423-9399c9bb0912' : ComponentFunctionalAllocation
                                allocate function ::> 'Physical Functions'::'Root Physical Function'.'Provide Stopping'.'Transmit Force '.'Transmit LeftForce'
                                to component ::> 'Front Hydraulic Line' { 
                                @CapellaID { eid = "62c97623-0d40-49be-b423-9399c9bb0912"; } 
                            } 
                            perform 'Physical Functions'::'Root Physical Function'.'Provide Stopping'.'Transmit Force '.'Transmit LeftForce' ; 
                            allocation '824850bf-f364-457d-8b8f-188c9a67d4ac' : ComponentFunctionalAllocation
                                allocate function ::> 'Physical Functions'::'Root Physical Function'.'Receive Support'
                                to component ::> 'Front Hydraulic Line' { 
                                @CapellaID { eid = "824850bf-f364-457d-8b8f-188c9a67d4ac"; } 
                            } 
                            perform 'Physical Functions'::'Root Physical Function'.'Receive Support' ; 
                            port 'CP 1' : ComponentPort { 
                                @CapellaID { eid = "f81f98c5-2bad-4a02-8b49-672ca78a7960"; } 
                                attribute :>> aggregationKind = AggregationKind::UNSET; 
                                attribute :>> isFinal = false; 
                                attribute :>> isAbstract = false; 
                                attribute :>> isDerived = false; 
                                attribute :>> isPartOfKey = false; 
                                attribute :>> isReadOnly = false; 
                                attribute :>> isStatic = false; 
                                attribute :>> kind = ComponentPortKind::FLOW; 
                                attribute :>> isMaxInclusive = false; 
                                attribute :>> isMinInclusive = false; 
                                attribute :>> isOrdered = false; 
                                attribute :>> orientation = OrientationPortKind::IN; 
                                attribute :>> isUnique = false; 
                                ref allocation '74db1c1f-c486-4cf9-905a-732e5ace850c' : PortAllocation
                                    allocate allocatedPort ::> 'Physical Functions'::'Root Physical Function'.'Provide Stopping'.'Transmit Force '.'Transmit LeftForce'.'FIP 1'
                                    to allocatingPort ::> 'CP 1'; 
                                ref :>> ownedPortAllocations =  ('74db1c1f-c486-4cf9-905a-732e5ace850c'); 
                            }  
                            port 'CP 2' : ComponentPort { 
                                @CapellaID { eid = "bc9328d6-da3d-46c6-a21d-bd3006f25c65"; } 
                                attribute :>> aggregationKind = AggregationKind::UNSET; 
                                attribute :>> isFinal = false; 
                                attribute :>> isAbstract = false; 
                                attribute :>> isDerived = false; 
                                attribute :>> isPartOfKey = false; 
                                attribute :>> isReadOnly = false; 
                                attribute :>> isStatic = false; 
                                attribute :>> kind = ComponentPortKind::FLOW; 
                                attribute :>> isMaxInclusive = false; 
                                attribute :>> isMinInclusive = false; 
                                attribute :>> isOrdered = false; 
                                attribute :>> orientation = OrientationPortKind::OUT; 
                                attribute :>> isUnique = false; 
                                ref allocation '2a20eef9-610c-43c8-868b-0e4dcf8fa43f' : PortAllocation
                                    allocate allocatedPort ::> 'Physical Functions'::'Root Physical Function'.'Provide Stopping'.'Transmit Force '.'Transmit LeftForce'.'FOP 1'
                                    to allocatingPort ::> 'CP 2'; 
                                ref :>> ownedPortAllocations =  ('2a20eef9-610c-43c8-868b-0e4dcf8fa43f'); 
                            }  
                            port 'CP 3' : ComponentPort { 
                                @CapellaID { eid = "04487ba0-448d-49a3-a888-95e3c9677224"; } 
                                attribute :>> aggregationKind = AggregationKind::UNSET; 
                                attribute :>> isFinal = false; 
                                attribute :>> isAbstract = false; 
                                attribute :>> isDerived = false; 
                                attribute :>> isPartOfKey = false; 
                                attribute :>> isReadOnly = false; 
                                attribute :>> isStatic = false; 
                                attribute :>> kind = ComponentPortKind::FLOW; 
                                attribute :>> isMaxInclusive = false; 
                                attribute :>> isMinInclusive = false; 
                                attribute :>> isOrdered = false; 
                                attribute :>> orientation = OrientationPortKind::IN; 
                                attribute :>> isUnique = false; 
                                ref allocation '0093a63c-f05a-4a85-b21f-3ba9ef4a4f2b' : PortAllocation
                                    allocate allocatedPort ::> 'Physical Functions'::'Root Physical Function'.'Receive Support'.'FIP 1'
                                    to allocatingPort ::> 'CP 3'; 
                                ref :>> ownedPortAllocations =  ('0093a63c-f05a-4a85-b21f-3ba9ef4a4f2b'); 
                            }  
                            ref :>> ownedFunctionalAllocation =  ('62c97623-0d40-49be-b423-9399c9bb0912',
                            '824850bf-f364-457d-8b8f-188c9a67d4ac'); 
                        }  
                        part 'Rear Hydraulic Line' : PhysicalComponent { 
                            @CapellaID { eid = "ffb7f071-2d02-49a0-90d7-6307a95c6d24"; } 
                            attribute :>> isAbstract = false; 
                            attribute :>> isActor = false; 
                            attribute :>> isHuman = false; 
                            attribute :>> kind = PhysicalComponentKind::UNSET; 
                            attribute :>> nature = PhysicalComponentNature::BEHAVIOR; 
                            allocation 'f6a73b6d-8881-4029-8cbc-d36dd44c5e35' : ComponentFunctionalAllocation
                                allocate function ::> 'Physical Functions'::'Root Physical Function'.'Provide Stopping'.'Transmit Force '.'Tranmit Right Force'
                                to component ::> 'Rear Hydraulic Line' { 
                                @CapellaID { eid = "f6a73b6d-8881-4029-8cbc-d36dd44c5e35"; } 
                            } 
                            perform 'Physical Functions'::'Root Physical Function'.'Provide Stopping'.'Transmit Force '.'Tranmit Right Force' ; 
                            allocation '379792ee-a45b-4212-872a-9af68b902514' : ComponentFunctionalAllocation
                                allocate function ::> 'Physical Functions'::'Root Physical Function'.'Receive Support'
                                to component ::> 'Rear Hydraulic Line' { 
                                @CapellaID { eid = "379792ee-a45b-4212-872a-9af68b902514"; } 
                            } 
                            perform 'Physical Functions'::'Root Physical Function'.'Receive Support' ; 
                            port 'CP 1' : ComponentPort { 
                                @CapellaID { eid = "31ebea8b-d1f1-4a62-a8e5-3c91fff9df5b"; } 
                                attribute :>> aggregationKind = AggregationKind::UNSET; 
                                attribute :>> isFinal = false; 
                                attribute :>> isAbstract = false; 
                                attribute :>> isDerived = false; 
                                attribute :>> isPartOfKey = false; 
                                attribute :>> isReadOnly = false; 
                                attribute :>> isStatic = false; 
                                attribute :>> kind = ComponentPortKind::FLOW; 
                                attribute :>> isMaxInclusive = false; 
                                attribute :>> isMinInclusive = false; 
                                attribute :>> isOrdered = false; 
                                attribute :>> orientation = OrientationPortKind::IN; 
                                attribute :>> isUnique = false; 
                                ref allocation 'a2ad53f3-52f5-4e73-873d-21a98bd09fa3' : PortAllocation
                                    allocate allocatedPort ::> 'Physical Functions'::'Root Physical Function'.'Provide Stopping'.'Transmit Force '.'Tranmit Right Force'.'FIP 1'
                                    to allocatingPort ::> 'CP 1'; 
                                ref :>> ownedPortAllocations =  ('a2ad53f3-52f5-4e73-873d-21a98bd09fa3'); 
                            }  
                            port 'CP 2' : ComponentPort { 
                                @CapellaID { eid = "091ea9e4-3dc1-4a99-8c15-329e44df99b0"; } 
                                attribute :>> aggregationKind = AggregationKind::UNSET; 
                                attribute :>> isFinal = false; 
                                attribute :>> isAbstract = false; 
                                attribute :>> isDerived = false; 
                                attribute :>> isPartOfKey = false; 
                                attribute :>> isReadOnly = false; 
                                attribute :>> isStatic = false; 
                                attribute :>> kind = ComponentPortKind::FLOW; 
                                attribute :>> isMaxInclusive = false; 
                                attribute :>> isMinInclusive = false; 
                                attribute :>> isOrdered = false; 
                                attribute :>> orientation = OrientationPortKind::OUT; 
                                attribute :>> isUnique = false; 
                                ref allocation '3cd8e6ac-9885-439f-9a99-54c71c30a5da' : PortAllocation
                                    allocate allocatedPort ::> 'Physical Functions'::'Root Physical Function'.'Provide Stopping'.'Transmit Force '.'Tranmit Right Force'.'FOP 1'
                                    to allocatingPort ::> 'CP 2'; 
                                ref :>> ownedPortAllocations =  ('3cd8e6ac-9885-439f-9a99-54c71c30a5da'); 
                            }  
                            port 'CP 3' : ComponentPort { 
                                @CapellaID { eid = "2701260f-4ee0-4762-a3a5-3aee406e6730"; } 
                                attribute :>> aggregationKind = AggregationKind::UNSET; 
                                attribute :>> isFinal = false; 
                                attribute :>> isAbstract = false; 
                                attribute :>> isDerived = false; 
                                attribute :>> isPartOfKey = false; 
                                attribute :>> isReadOnly = false; 
                                attribute :>> isStatic = false; 
                                attribute :>> kind = ComponentPortKind::FLOW; 
                                attribute :>> isMaxInclusive = false; 
                                attribute :>> isMinInclusive = false; 
                                attribute :>> isOrdered = false; 
                                attribute :>> orientation = OrientationPortKind::IN; 
                                attribute :>> isUnique = false; 
                                ref allocation 'd96fea7e-25b1-46c9-b712-14b910d91caf' : PortAllocation
                                    allocate allocatedPort ::> 'Physical Functions'::'Root Physical Function'.'Receive Support'.'FIP 1'
                                    to allocatingPort ::> 'CP 3'; 
                                ref :>> ownedPortAllocations =  ('d96fea7e-25b1-46c9-b712-14b910d91caf'); 
                            }  
                            ref :>> ownedFunctionalAllocation =  ('f6a73b6d-8881-4029-8cbc-d36dd44c5e35',
                            '379792ee-a45b-4212-872a-9af68b902514'); 
                        }  
                        ref :>> ownedFunctionalAllocation =  ('0778a839-bfb9-45eb-b33a-c9b0a553920d',
                        'da853f22-45c4-4786-a48a-a2de29fd2c2c',
                        'b4f53fab-3804-4c6e-9dbb-245fbf69d5df'); 
                         
                        ref :>> ownedPhysicalComponents =  ('Front Hydraulic Line',
                        'Rear Hydraulic Line'); 
                    }  
                    part 'Feedback and Sensing' : PhysicalComponent { 
                        doc /*
                        <p>Optional but may exist for higher end bikes.</p>

                        <p>Example elements:</p>

                        <ul>
                        	<li>Brake pad wear sensor</li>
                        	<li>Actuator position sensor</li>
                        	<li>Brake pressure sensor</li>
                        </ul>

                        */ 
                        @CapellaID { eid = "befd598d-16ed-4070-9e6e-5f38f4e403fb"; } 
                        attribute :>> isAbstract = false; 
                        attribute :>> isActor = false; 
                        attribute :>> isHuman = false; 
                        attribute :>> kind = PhysicalComponentKind::UNSET; 
                        attribute :>> nature = PhysicalComponentNature::BEHAVIOR; 
                        allocation '6c8d300c-da63-4796-84cd-74237afca288' : ComponentFunctionalAllocation
                            allocate function ::> 'Physical Functions'::'Root Physical Function'.'Provide Stopping'.'Detect Brake Engagement Level'
                            to component ::> 'Feedback and Sensing' { 
                            @CapellaID { eid = "6c8d300c-da63-4796-84cd-74237afca288"; } 
                        } 
                        perform 'Physical Functions'::'Root Physical Function'.'Provide Stopping'.'Detect Brake Engagement Level' ; 
                        allocation 'cd09bbe7-0343-4c75-addd-d7681c7f531d' : ComponentFunctionalAllocation
                            allocate function ::> 'Physical Functions'::'Root Physical Function'.'Provide Stopping'.'Monitor Pad Wear'
                            to component ::> 'Feedback and Sensing' { 
                            @CapellaID { eid = "cd09bbe7-0343-4c75-addd-d7681c7f531d"; } 
                        } 
                        perform 'Physical Functions'::'Root Physical Function'.'Provide Stopping'.'Monitor Pad Wear' ; 
                        allocation 'f7b5a111-abab-4736-af81-3ea03770c3eb' : ComponentFunctionalAllocation
                            allocate function ::> 'Physical Functions'::'Root Physical Function'.'Provide Stopping'.'Report Status to Rider'
                            to component ::> 'Feedback and Sensing' { 
                            @CapellaID { eid = "f7b5a111-abab-4736-af81-3ea03770c3eb"; } 
                        } 
                        perform 'Physical Functions'::'Root Physical Function'.'Provide Stopping'.'Report Status to Rider' ; 
                        allocation 'e9b66df1-ff89-4def-bc35-eb4b34595851' : ComponentFunctionalAllocation
                            allocate function ::> 'Physical Functions'::'Root Physical Function'.'Provide Stopping'.'Transmit Data'
                            to component ::> 'Feedback and Sensing' { 
                            @CapellaID { eid = "e9b66df1-ff89-4def-bc35-eb4b34595851"; } 
                        } 
                        perform 'Physical Functions'::'Root Physical Function'.'Provide Stopping'.'Transmit Data' ; 
                        allocation 'e305606f-bf63-4432-9c9d-a6dfeb4136a3' : ComponentFunctionalAllocation
                            allocate function ::> 'Physical Functions'::'Root Physical Function'.'Recieve Environment'
                            to component ::> 'Feedback and Sensing' { 
                            @CapellaID { eid = "e305606f-bf63-4432-9c9d-a6dfeb4136a3"; } 
                        } 
                        perform 'Physical Functions'::'Root Physical Function'.'Recieve Environment' ; 
                        dependency '741f2f48-b480-4cdf-b7e3-d84d4fdf0840'
                            from '6c8d300c-da63-4796-84cd-74237afca288'
                            to  'Logical Architecture'::'Structure'::'Braking System'::'Feedback and Sensing'::'1bf1be66-c3b9-4210-b24e-6b635c7c66ac' { 
                            @TransfoLink { 
                                @CapellaID { eid = "741f2f48-b480-4cdf-b7e3-d84d4fdf0840"; } 
                            }  
                        }  
                        dependency 'd915a3a0-e1a5-4651-8ec4-8819850e042a'
                            from 'cd09bbe7-0343-4c75-addd-d7681c7f531d'
                            to  'Logical Architecture'::'Structure'::'Braking System'::'Feedback and Sensing'::'69e6a060-d50d-4b12-a246-b119e0100e75' { 
                            @TransfoLink { 
                                @CapellaID { eid = "d915a3a0-e1a5-4651-8ec4-8819850e042a"; } 
                            }  
                        }  
                        dependency '998a54b2-d096-4dbd-aa70-a7406d4e5a74'
                            from 'f7b5a111-abab-4736-af81-3ea03770c3eb'
                            to  'Logical Architecture'::'Structure'::'Braking System'::'Feedback and Sensing'::'ccd8d5a0-42ea-4d2b-84d9-db8c7c4c7cfe' { 
                            @TransfoLink { 
                                @CapellaID { eid = "998a54b2-d096-4dbd-aa70-a7406d4e5a74"; } 
                            }  
                        }  
                        dependency '7f361c2b-a2eb-40eb-b972-6dc8efa5a4df'
                            from 'e9b66df1-ff89-4def-bc35-eb4b34595851'
                            to  'Logical Architecture'::'Structure'::'Braking System'::'Feedback and Sensing'::'798d5fb9-12bd-4d88-972e-354795892e0c' { 
                            @TransfoLink { 
                                @CapellaID { eid = "7f361c2b-a2eb-40eb-b972-6dc8efa5a4df"; } 
                            }  
                        }  
                        dependency 'f8a34e5c-524f-4e0e-89dd-3dfc3b713cd3'
                            from 'e305606f-bf63-4432-9c9d-a6dfeb4136a3'
                            to  'Logical Architecture'::'Structure'::'Braking System'::'Feedback and Sensing'::'0c40d14f-5a34-4a0e-932c-4830121cd155' { 
                            @TransfoLink { 
                                @CapellaID { eid = "f8a34e5c-524f-4e0e-89dd-3dfc3b713cd3"; } 
                            }  
                        }  
                        ref :>> ownedFunctionalAllocation =  ('6c8d300c-da63-4796-84cd-74237afca288',
                        'cd09bbe7-0343-4c75-addd-d7681c7f531d',
                        'f7b5a111-abab-4736-af81-3ea03770c3eb',
                        'e9b66df1-ff89-4def-bc35-eb4b34595851',
                        'e305606f-bf63-4432-9c9d-a6dfeb4136a3'); 
                         
                    }  
                    part 'Left Brake Lever' : PhysicalComponent { 
                        @CapellaID { eid = "8bfa97a3-a27d-4a43-8273-c2188495c0b7"; } 
                        attribute :>> isAbstract = false; 
                        attribute :>> isActor = false; 
                        attribute :>> isHuman = false; 
                        attribute :>> kind = PhysicalComponentKind::UNSET; 
                        attribute :>> nature = PhysicalComponentNature::NODE; 
                        attribute 'Mass' : PropertyValueGroup { 
                            @CapellaID { eid = "e1ca58a9-057e-4a43-b92d-461d97507d88"; } 
                            attribute 'Units' : StringPropertyValue  = "g" { 
                                @CapellaID { eid = "f72c133f-4250-4013-9e22-3bda7eebfa2f"; } 
                            }  
                            attribute 'Max Value' : FloatPropertyValue  = 14.0 { 
                                @CapellaID { eid = "f767662d-08d1-4c9f-a980-c9e26ef43ec7"; } 
                            }  
                            ref :>> ownedPropertyValues =  ('Units',
                            'Max Value'); 
                        }  
                        port 'PP 1' : PhysicalPort { 
                            @CapellaID { eid = "ac3f9033-9c05-4991-bc51-2568ea090774"; } 
                            attribute :>> aggregationKind = AggregationKind::UNSET; 
                            attribute :>> isFinal = false; 
                            attribute :>> isAbstract = false; 
                            attribute :>> isDerived = false; 
                            attribute :>> isPartOfKey = false; 
                            attribute :>> isReadOnly = false; 
                            attribute :>> isStatic = false; 
                            attribute :>> isMaxInclusive = false; 
                            attribute :>> isMinInclusive = false; 
                            attribute :>> isOrdered = false; 
                            attribute :>> isUnique = false; 
                            ref allocation '3718e165-00a2-41ca-a8fe-415df802025d' : ComponentPortAllocation
                                allocate allocatedPort ::> 'PP 1'
                                to allocatingPort ::> 'Bike BrakeSystem Library Library'::'Bike BrakeSystem Library'::'Physical Architecture'::'Structure'::'Physical System'.'Control Subsystem'.'Left Lever'.'CP 1' { 
                                @CapellaID { eid = "3718e165-00a2-41ca-a8fe-415df802025d"; } 
                            }  
                            ref :>> ownedComponentPortAllocations =  ('3718e165-00a2-41ca-a8fe-415df802025d'); 
                        }  
                        port 'Rider' : PhysicalPort { 
                            @CapellaID { eid = "5a24d4ff-76a8-499d-90d8-a16455417797"; } 
                            attribute :>> aggregationKind = AggregationKind::UNSET; 
                            attribute :>> isFinal = false; 
                            attribute :>> isAbstract = false; 
                            attribute :>> isDerived = false; 
                            attribute :>> isPartOfKey = false; 
                            attribute :>> isReadOnly = false; 
                            attribute :>> isStatic = false; 
                            attribute :>> isMaxInclusive = false; 
                            attribute :>> isMinInclusive = false; 
                            attribute :>> isOrdered = false; 
                            attribute :>> isUnique = false; 
                        }  
                        ref :>> ownedPropertyValueGroups =  ('Mass'); 
                        ref :>> appliedPropertyValueGroups =  ('Mass'); 
                    }  
                    part 'Rear Caliper' : PhysicalComponent { 
                        @CapellaID { eid = "802dbe16-e87a-47c6-993e-30dc54124569"; } 
                        attribute :>> isAbstract = false; 
                        attribute :>> isActor = false; 
                        attribute :>> isHuman = false; 
                        attribute :>> kind = PhysicalComponentKind::UNSET; 
                        attribute :>> nature = PhysicalComponentNature::NODE; 
                        attribute 'Mass' : PropertyValueGroup { 
                            @CapellaID { eid = "9080de5a-62df-4e6c-bc0a-e2599abf75d2"; } 
                            attribute 'Units' : StringPropertyValue  = "g" { 
                                @CapellaID { eid = "7738d0a7-7ed3-4ec6-9d18-621cc48b83ec"; } 
                            }  
                            attribute 'Max Value' : FloatPropertyValue  = 15.0 { 
                                @CapellaID { eid = "07d1ad9c-6c99-4920-9e54-901296f2ecb2"; } 
                            }  
                            ref :>> ownedPropertyValues =  ('Units',
                            'Max Value'); 
                        }  
                        attribute 'Strength' : PropertyValueGroup { 
                            @CapellaID { eid = "08532592-6237-4fad-ab85-c0d0bad23d26"; } 
                            attribute 'Units' : StringPropertyValue  = "SI Unit" { 
                                @CapellaID { eid = "4ac18258-fe3c-4420-ad5d-9cccab1af216"; } 
                            }  
                            attribute 'Value' : FloatPropertyValue  = 200.0 { 
                                @CapellaID { eid = "d7422ae3-8ee4-4141-a608-45bf678d4c52"; } 
                            }  
                            ref :>> ownedPropertyValues =  ('Units',
                            'Value'); 
                        }  
                        port 'PP 2' : PhysicalPort { 
                            @CapellaID { eid = "f8f833de-e1b1-4e45-9992-1b23b4a3731a"; } 
                            attribute :>> aggregationKind = AggregationKind::UNSET; 
                            attribute :>> isFinal = false; 
                            attribute :>> isAbstract = false; 
                            attribute :>> isDerived = false; 
                            attribute :>> isPartOfKey = false; 
                            attribute :>> isReadOnly = false; 
                            attribute :>> isStatic = false; 
                            attribute :>> isMaxInclusive = false; 
                            attribute :>> isMinInclusive = false; 
                            attribute :>> isOrdered = false; 
                            attribute :>> isUnique = false; 
                            ref allocation 'f25ca669-ae24-47d9-abf5-5a834aba1f2e' : ComponentPortAllocation
                                allocate allocatedPort ::> 'PP 2'
                                to allocatingPort ::> 'Bike BrakeSystem Library Library'::'Bike BrakeSystem Library'::'Physical Architecture'::'Structure'::'Physical System'.'Break Actuation Subsystem '.'Rear Caliper'.'CP 2' { 
                                @CapellaID { eid = "f25ca669-ae24-47d9-abf5-5a834aba1f2e"; } 
                            }  
                            ref :>> ownedComponentPortAllocations =  ('f25ca669-ae24-47d9-abf5-5a834aba1f2e'); 
                        }  
                        port 'PP 3' : PhysicalPort { 
                            @CapellaID { eid = "51af6c44-a8b0-47da-a7e3-ff3937e470c9"; } 
                            attribute :>> aggregationKind = AggregationKind::UNSET; 
                            attribute :>> isFinal = false; 
                            attribute :>> isAbstract = false; 
                            attribute :>> isDerived = false; 
                            attribute :>> isPartOfKey = false; 
                            attribute :>> isReadOnly = false; 
                            attribute :>> isStatic = false; 
                            attribute :>> isMaxInclusive = false; 
                            attribute :>> isMinInclusive = false; 
                            attribute :>> isOrdered = false; 
                            attribute :>> isUnique = false; 
                            ref allocation 'a0be1f4c-317e-4876-995b-cea8a3f9909a' : ComponentPortAllocation
                                allocate allocatedPort ::> 'PP 3'
                                to allocatingPort ::> 'Bike BrakeSystem Library Library'::'Bike BrakeSystem Library'::'Physical Architecture'::'Structure'::'Physical System'.'Break Actuation Subsystem '.'Rear Caliper'.'CP 3' { 
                                @CapellaID { eid = "a0be1f4c-317e-4876-995b-cea8a3f9909a"; } 
                            }  
                            ref :>> ownedComponentPortAllocations =  ('a0be1f4c-317e-4876-995b-cea8a3f9909a'); 
                        }  
                        port 'Frame' : PhysicalPort { 
                            @CapellaID { eid = "4673659f-04e9-4e54-b986-a4104a4b96da"; } 
                            attribute :>> aggregationKind = AggregationKind::UNSET; 
                            attribute :>> isFinal = false; 
                            attribute :>> isAbstract = false; 
                            attribute :>> isDerived = false; 
                            attribute :>> isPartOfKey = false; 
                            attribute :>> isReadOnly = false; 
                            attribute :>> isStatic = false; 
                            attribute :>> isMaxInclusive = false; 
                            attribute :>> isMinInclusive = false; 
                            attribute :>> isOrdered = false; 
                            attribute :>> isUnique = false; 
                            ref allocation 'f136f3e8-7662-4887-9a64-bf2fbd8f7134' : ComponentPortAllocation
                                allocate allocatedPort ::> 'Frame'
                                to allocatingPort ::> 'Bike BrakeSystem Library Library'::'Bike BrakeSystem Library'::'Physical Architecture'::'Structure'::'Physical System'.'Break Actuation Subsystem '.'Rear Caliper'.'CP 4' { 
                                @CapellaID { eid = "f136f3e8-7662-4887-9a64-bf2fbd8f7134"; } 
                            }  
                            ref :>> ownedComponentPortAllocations =  ('f136f3e8-7662-4887-9a64-bf2fbd8f7134'); 
                        }  
                        port 'PP 5' : PhysicalPort { 
                            @CapellaID { eid = "2c5f3705-a4ef-48ed-957d-09799a2a1206"; } 
                            attribute :>> aggregationKind = AggregationKind::UNSET; 
                            attribute :>> isFinal = false; 
                            attribute :>> isAbstract = false; 
                            attribute :>> isDerived = false; 
                            attribute :>> isPartOfKey = false; 
                            attribute :>> isReadOnly = false; 
                            attribute :>> isStatic = false; 
                            attribute :>> isMaxInclusive = false; 
                            attribute :>> isMinInclusive = false; 
                            attribute :>> isOrdered = false; 
                            attribute :>> isUnique = false; 
                            ref allocation 'e4605a43-23a2-4c24-b146-f010bb923397' : ComponentPortAllocation
                                allocate allocatedPort ::> 'PP 5'
                                to allocatingPort ::> 'Bike BrakeSystem Library Library'::'Bike BrakeSystem Library'::'Physical Architecture'::'Structure'::'Physical System'.'Break Actuation Subsystem '.'Rear Caliper'.'CP 1' { 
                                @CapellaID { eid = "e4605a43-23a2-4c24-b146-f010bb923397"; } 
                            }  
                            ref :>> ownedComponentPortAllocations =  ('e4605a43-23a2-4c24-b146-f010bb923397'); 
                        }  
                        ref :>> ownedPropertyValueGroups =  ('Mass',
                        'Strength'); 
                        ref :>> appliedPropertyValueGroups =  ('Mass',
                        'Strength'); 
                    }  
                    part 'Rear Rotor' : PhysicalComponent { 
                        @CapellaID { eid = "5971a159-e19c-49e5-9904-bf4c49b417a3"; } 
                        attribute :>> isAbstract = false; 
                        attribute :>> isActor = false; 
                        attribute :>> isHuman = false; 
                        attribute :>> kind = PhysicalComponentKind::UNSET; 
                        attribute :>> nature = PhysicalComponentNature::NODE; 
                        attribute 'Mass' : PropertyValueGroup { 
                            @CapellaID { eid = "a863de18-a8f4-4c92-bb7a-cba4207aed8c"; } 
                            attribute 'Units' : StringPropertyValue  = "g" { 
                                @CapellaID { eid = "06ac8f79-5ef0-4bec-827b-fef6fc910fac"; } 
                            }  
                            attribute 'Max Value' : FloatPropertyValue  = 270.0 { 
                                @CapellaID { eid = "9931e4f0-01c4-4ab5-b6ee-e0d209ff07bf"; } 
                            }  
                            ref :>> ownedPropertyValues =  ('Units',
                            'Max Value'); 
                        }  
                        attribute 'Cost' : PropertyValueGroup { 
                            @CapellaID { eid = "d0f3deea-a611-48bf-9f7f-11519e7e9a87"; } 
                            attribute 'Units' : StringPropertyValue  = "$" { 
                                @CapellaID { eid = "0977ab94-ec30-4dbf-bd24-b9c6629fa129"; } 
                            }  
                            attribute 'Value' : FloatPropertyValue  = 20.0 { 
                                @CapellaID { eid = "13d12de4-5df7-48b8-a3c7-d915f5613860"; } 
                            }  
                            ref :>> ownedPropertyValues =  ('Units',
                            'Value'); 
                        }  
                        attribute 'Strength' : PropertyValueGroup { 
                            @CapellaID { eid = "a0806d3a-bb3c-4317-ae57-2a3ea88690c3"; } 
                            attribute 'Units' : StringPropertyValue  = "SI Unit" { 
                                @CapellaID { eid = "9c33b5cb-126c-4fb2-80fd-93d51a8fe86b"; } 
                            }  
                            attribute 'Value' : FloatPropertyValue  = 200.0 { 
                                @CapellaID { eid = "33dcd817-6e23-44d1-a1f0-d57e5a74c2e7"; } 
                            }  
                            ref :>> ownedPropertyValues =  ('Units',
                            'Value'); 
                        }  
                        port 'PP 1' : PhysicalPort { 
                            @CapellaID { eid = "2af44827-c6dc-402a-85f8-e485dbfcaf86"; } 
                            attribute :>> aggregationKind = AggregationKind::UNSET; 
                            attribute :>> isFinal = false; 
                            attribute :>> isAbstract = false; 
                            attribute :>> isDerived = false; 
                            attribute :>> isPartOfKey = false; 
                            attribute :>> isReadOnly = false; 
                            attribute :>> isStatic = false; 
                            attribute :>> isMaxInclusive = false; 
                            attribute :>> isMinInclusive = false; 
                            attribute :>> isOrdered = false; 
                            attribute :>> isUnique = false; 
                            ref allocation '90abef1c-09bd-463c-bf4b-c522d4754c0a' : ComponentPortAllocation
                                allocate allocatedPort ::> 'PP 1'
                                to allocatingPort ::> 'Bike BrakeSystem Library Library'::'Bike BrakeSystem Library'::'Physical Architecture'::'Structure'::'Physical System'.'Break Actuation Subsystem '.'Rear Rotor'.'CP 2' { 
                                @CapellaID { eid = "90abef1c-09bd-463c-bf4b-c522d4754c0a"; } 
                            }  
                            ref :>> ownedComponentPortAllocations =  ('90abef1c-09bd-463c-bf4b-c522d4754c0a'); 
                        }  
                        port 'PP 2' : PhysicalPort { 
                            @CapellaID { eid = "8a8f1462-cc2c-4d86-89ab-acedced39ac4"; } 
                            attribute :>> aggregationKind = AggregationKind::UNSET; 
                            attribute :>> isFinal = false; 
                            attribute :>> isAbstract = false; 
                            attribute :>> isDerived = false; 
                            attribute :>> isPartOfKey = false; 
                            attribute :>> isReadOnly = false; 
                            attribute :>> isStatic = false; 
                            attribute :>> isMaxInclusive = false; 
                            attribute :>> isMinInclusive = false; 
                            attribute :>> isOrdered = false; 
                            attribute :>> isUnique = false; 
                            ref allocation 'acfbd952-c00f-449b-acc3-7cf69c94ee17' : ComponentPortAllocation
                                allocate allocatedPort ::> 'PP 2'
                                to allocatingPort ::> 'Bike BrakeSystem Library Library'::'Bike BrakeSystem Library'::'Physical Architecture'::'Structure'::'Physical System'.'Break Actuation Subsystem '.'Rear Rotor'.'CP 1' { 
                                @CapellaID { eid = "acfbd952-c00f-449b-acc3-7cf69c94ee17"; } 
                            }  
                            ref :>> ownedComponentPortAllocations =  ('acfbd952-c00f-449b-acc3-7cf69c94ee17'); 
                        }  
                        port 'Wheel Tires' : PhysicalPort { 
                            @CapellaID { eid = "28ec92e4-51f3-4518-9792-259433065ea5"; } 
                            attribute :>> aggregationKind = AggregationKind::UNSET; 
                            attribute :>> isFinal = false; 
                            attribute :>> isAbstract = false; 
                            attribute :>> isDerived = false; 
                            attribute :>> isPartOfKey = false; 
                            attribute :>> isReadOnly = false; 
                            attribute :>> isStatic = false; 
                            attribute :>> isMaxInclusive = false; 
                            attribute :>> isMinInclusive = false; 
                            attribute :>> isOrdered = false; 
                            attribute :>> isUnique = false; 
                            ref allocation '7448c333-4090-4d8f-b30b-f30874013df5' : ComponentPortAllocation
                                allocate allocatedPort ::> 'Wheel Tires'
                                to allocatingPort ::> 'Bike BrakeSystem Library Library'::'Bike BrakeSystem Library'::'Physical Architecture'::'Structure'::'Physical System'.'Break Actuation Subsystem '.'Rear Rotor'.'CP 3' { 
                                @CapellaID { eid = "7448c333-4090-4d8f-b30b-f30874013df5"; } 
                            }  
                            ref :>> ownedComponentPortAllocations =  ('7448c333-4090-4d8f-b30b-f30874013df5'); 
                        }  
                        ref :>> ownedPropertyValueGroups =  ('Mass',
                        'Cost',
                        'Strength'); 
                        ref :>> appliedPropertyValueGroups =  ('Mass',
                        'Cost',
                        'Strength'); 
                    }  
                    part 'PAD RL' : PhysicalComponent { 
                        @CapellaID { eid = "55433cbf-5590-4bde-83a3-1da84df5b5e2"; } 
                        attribute :>> isAbstract = false; 
                        attribute :>> isActor = false; 
                        attribute :>> isHuman = false; 
                        attribute :>> kind = PhysicalComponentKind::UNSET; 
                        attribute :>> nature = PhysicalComponentNature::NODE; 
                        attribute 'Mass' : PropertyValueGroup { 
                            @CapellaID { eid = "e2659ebe-8111-4d8c-acac-598f18cb71c7"; } 
                            attribute 'Units' : StringPropertyValue  = "g" { 
                                @CapellaID { eid = "3372d7c7-a422-400d-8a81-eb6e6e04f603"; } 
                            }  
                            attribute 'Max Value' : FloatPropertyValue  = 2.0 { 
                                @CapellaID { eid = "e00e55a5-74d6-488e-918d-16cfaf0e698d"; } 
                            }  
                            ref :>> ownedPropertyValues =  ('Units',
                            'Max Value'); 
                        }  
                        port 'PP 1' : PhysicalPort { 
                            @CapellaID { eid = "3a237ce7-b792-4189-aef4-20304e86844b"; } 
                            attribute :>> aggregationKind = AggregationKind::UNSET; 
                            attribute :>> isFinal = false; 
                            attribute :>> isAbstract = false; 
                            attribute :>> isDerived = false; 
                            attribute :>> isPartOfKey = false; 
                            attribute :>> isReadOnly = false; 
                            attribute :>> isStatic = false; 
                            attribute :>> isMaxInclusive = false; 
                            attribute :>> isMinInclusive = false; 
                            attribute :>> isOrdered = false; 
                            attribute :>> isUnique = false; 
                            ref allocation '23eac530-5c75-420f-8599-65a7dc538eca' : ComponentPortAllocation
                                allocate allocatedPort ::> 'PP 1'
                                to allocatingPort ::> 'Bike BrakeSystem Library Library'::'Bike BrakeSystem Library'::'Physical Architecture'::'Structure'::'Physical System'.'Break Actuation Subsystem '.'Left Rear Pad'.'CP 1' { 
                                @CapellaID { eid = "23eac530-5c75-420f-8599-65a7dc538eca"; } 
                            }  
                            ref :>> ownedComponentPortAllocations =  ('23eac530-5c75-420f-8599-65a7dc538eca'); 
                        }  
                        port 'PP 2' : PhysicalPort { 
                            @CapellaID { eid = "c583df1b-8274-4613-a224-92c257612703"; } 
                            attribute :>> aggregationKind = AggregationKind::UNSET; 
                            attribute :>> isFinal = false; 
                            attribute :>> isAbstract = false; 
                            attribute :>> isDerived = false; 
                            attribute :>> isPartOfKey = false; 
                            attribute :>> isReadOnly = false; 
                            attribute :>> isStatic = false; 
                            attribute :>> isMaxInclusive = false; 
                            attribute :>> isMinInclusive = false; 
                            attribute :>> isOrdered = false; 
                            attribute :>> isUnique = false; 
                            ref allocation '535aff49-7ec6-4468-9078-ba6a37d80a28' : ComponentPortAllocation
                                allocate allocatedPort ::> 'PP 2'
                                to allocatingPort ::> 'Bike BrakeSystem Library Library'::'Bike BrakeSystem Library'::'Physical Architecture'::'Structure'::'Physical System'.'Break Actuation Subsystem '.'Left Rear Pad'.'CP 2' { 
                                @CapellaID { eid = "535aff49-7ec6-4468-9078-ba6a37d80a28"; } 
                            }  
                            ref :>> ownedComponentPortAllocations =  ('535aff49-7ec6-4468-9078-ba6a37d80a28'); 
                        }  
                        ref :>> ownedPropertyValueGroups =  ('Mass'); 
                        ref :>> appliedPropertyValueGroups =  ('Mass'); 
                    }  
                    part 'PAD RR' : PhysicalComponent { 
                        @CapellaID { eid = "cd720a56-faa1-4fb5-8010-d8d1a42753d3"; } 
                        attribute :>> isAbstract = false; 
                        attribute :>> isActor = false; 
                        attribute :>> isHuman = false; 
                        attribute :>> kind = PhysicalComponentKind::UNSET; 
                        attribute :>> nature = PhysicalComponentNature::NODE; 
                        attribute 'Mass' : PropertyValueGroup { 
                            @CapellaID { eid = "ee871d95-877c-4506-b1e6-423e2cfdde75"; } 
                            attribute 'Units' : StringPropertyValue  = "g" { 
                                @CapellaID { eid = "a75ce4b0-6463-4f66-9975-d050cf1c389f"; } 
                            }  
                            attribute 'Max Value' : FloatPropertyValue  = 1.0 { 
                                @CapellaID { eid = "723ba453-502a-4087-a902-613eeb29edc0"; } 
                            }  
                            ref :>> ownedPropertyValues =  ('Units',
                            'Max Value'); 
                        }  
                        port 'PP 1' : PhysicalPort { 
                            @CapellaID { eid = "6fd82483-cf24-4a4a-a7d2-1aae4e37d39b"; } 
                            attribute :>> aggregationKind = AggregationKind::UNSET; 
                            attribute :>> isFinal = false; 
                            attribute :>> isAbstract = false; 
                            attribute :>> isDerived = false; 
                            attribute :>> isPartOfKey = false; 
                            attribute :>> isReadOnly = false; 
                            attribute :>> isStatic = false; 
                            attribute :>> isMaxInclusive = false; 
                            attribute :>> isMinInclusive = false; 
                            attribute :>> isOrdered = false; 
                            attribute :>> isUnique = false; 
                            ref allocation '9e9ebcaa-b8e1-4590-af7f-cc37a0664642' : ComponentPortAllocation
                                allocate allocatedPort ::> 'PP 1'
                                to allocatingPort ::> 'Bike BrakeSystem Library Library'::'Bike BrakeSystem Library'::'Physical Architecture'::'Structure'::'Physical System'.'Break Actuation Subsystem '.'Right Rear Pad'.'CP 1' { 
                                @CapellaID { eid = "9e9ebcaa-b8e1-4590-af7f-cc37a0664642"; } 
                            }  
                            ref :>> ownedComponentPortAllocations =  ('9e9ebcaa-b8e1-4590-af7f-cc37a0664642'); 
                        }  
                        port 'PP 2' : PhysicalPort { 
                            @CapellaID { eid = "ea599d4e-4f6f-4019-aa86-d5de54e7fced"; } 
                            attribute :>> aggregationKind = AggregationKind::UNSET; 
                            attribute :>> isFinal = false; 
                            attribute :>> isAbstract = false; 
                            attribute :>> isDerived = false; 
                            attribute :>> isPartOfKey = false; 
                            attribute :>> isReadOnly = false; 
                            attribute :>> isStatic = false; 
                            attribute :>> isMaxInclusive = false; 
                            attribute :>> isMinInclusive = false; 
                            attribute :>> isOrdered = false; 
                            attribute :>> isUnique = false; 
                            ref allocation '7f490ef9-2552-41ea-bec4-22bdeaa3a5c8' : ComponentPortAllocation
                                allocate allocatedPort ::> 'PP 2'
                                to allocatingPort ::> 'Bike BrakeSystem Library Library'::'Bike BrakeSystem Library'::'Physical Architecture'::'Structure'::'Physical System'.'Break Actuation Subsystem '.'Right Rear Pad'.'CP 2' { 
                                @CapellaID { eid = "7f490ef9-2552-41ea-bec4-22bdeaa3a5c8"; } 
                            }  
                            ref :>> ownedComponentPortAllocations =  ('7f490ef9-2552-41ea-bec4-22bdeaa3a5c8'); 
                        }  
                        ref :>> ownedPropertyValueGroups =  ('Mass'); 
                        ref :>> appliedPropertyValueGroups =  ('Mass'); 
                    }  
                    part 'Brake Lever' : PhysicalComponent { 
                        @CapellaID { eid = "17ad0e4a-e885-4d68-abb9-7742d419e03c"; } 
                        attribute :>> isAbstract = false; 
                        attribute :>> isActor = false; 
                        attribute :>> isHuman = false; 
                        attribute :>> kind = PhysicalComponentKind::UNSET; 
                        attribute :>> nature = PhysicalComponentNature::NODE; 
                        port 'PP 1' : PhysicalPort { 
                            @CapellaID { eid = "07ea7313-7f4c-4c63-9db3-0df9d65e0d0d"; } 
                            attribute :>> aggregationKind = AggregationKind::UNSET; 
                            attribute :>> isFinal = false; 
                            attribute :>> isAbstract = false; 
                            attribute :>> isDerived = false; 
                            attribute :>> isPartOfKey = false; 
                            attribute :>> isReadOnly = false; 
                            attribute :>> isStatic = false; 
                            attribute :>> isMaxInclusive = false; 
                            attribute :>> isMinInclusive = false; 
                            attribute :>> isOrdered = false; 
                            attribute :>> isUnique = false; 
                        }  
                    }  
                    part 'Rear Caliper' : PhysicalComponent { 
                        @CapellaID { eid = "0f9a351e-dbc9-4b02-91c2-7b78933ad2fd"; } 
                        attribute :>> isAbstract = false; 
                        attribute :>> isActor = false; 
                        attribute :>> isHuman = false; 
                        attribute :>> kind = PhysicalComponentKind::UNSET; 
                        attribute :>> nature = PhysicalComponentNature::NODE; 
                        part '198a198c-a4d0-4e5b-b8df-0a7b2c3b68b4' : CPart :> 'Actuaor'  { 
                            @CapellaID { eid = "198a198c-a4d0-4e5b-b8df-0a7b2c3b68b4"; } 
                            attribute :>> aggregationKind = AggregationKind::UNSET; 
                            attribute :>> isFinal = false; 
                            attribute :>> isAbstract = false; 
                            attribute :>> isDerived = false; 
                            attribute :>> isPartOfKey = false; 
                            attribute :>> isReadOnly = false; 
                            attribute :>> isStatic = false; 
                            attribute :>> isMaxInclusive = false; 
                            attribute :>> isMinInclusive = false; 
                            attribute :>> isOrdered = false; 
                            attribute :>> isUnique = false; 
                        }  
                        port 'PP 3' : PhysicalPort { 
                            @CapellaID { eid = "0f01c1cd-6810-44a5-b01e-183e57801c43"; } 
                            attribute :>> aggregationKind = AggregationKind::UNSET; 
                            attribute :>> isFinal = false; 
                            attribute :>> isAbstract = false; 
                            attribute :>> isDerived = false; 
                            attribute :>> isPartOfKey = false; 
                            attribute :>> isReadOnly = false; 
                            attribute :>> isStatic = false; 
                            attribute :>> isMaxInclusive = false; 
                            attribute :>> isMinInclusive = false; 
                            attribute :>> isOrdered = false; 
                            attribute :>> isUnique = false; 
                        }  
                        part 'Actuaor' : PhysicalComponent { 
                            @CapellaID { eid = "0c606d49-6b7c-4550-9d87-4fb4c0c8f274"; } 
                            attribute :>> isAbstract = false; 
                            attribute :>> isActor = false; 
                            attribute :>> isHuman = false; 
                            attribute :>> kind = PhysicalComponentKind::UNSET; 
                            attribute :>> nature = PhysicalComponentNature::NODE; 
                            port 'PP 2' : PhysicalPort { 
                                @CapellaID { eid = "9d068739-f35a-4d35-9360-02470867a46d"; } 
                                attribute :>> aggregationKind = AggregationKind::UNSET; 
                                attribute :>> isFinal = false; 
                                attribute :>> isAbstract = false; 
                                attribute :>> isDerived = false; 
                                attribute :>> isPartOfKey = false; 
                                attribute :>> isReadOnly = false; 
                                attribute :>> isStatic = false; 
                                attribute :>> isMaxInclusive = false; 
                                attribute :>> isMinInclusive = false; 
                                attribute :>> isOrdered = false; 
                                attribute :>> isUnique = false; 
                            }  
                        }  
                        ref :>> ownedPhysicalComponents =  ('Actuaor'); 
                    }  
                    part 'Electronic Brake Assembly' : PhysicalComponent { 
                        @CapellaID { eid = "544d67bc-1b1e-4df9-a814-4229b0409f33"; } 
                        attribute :>> isAbstract = false; 
                        attribute :>> isActor = false; 
                        attribute :>> isHuman = false; 
                        attribute :>> kind = PhysicalComponentKind::UNSET; 
                        attribute :>> nature = PhysicalComponentNature::NODE; 
                        interface '4c6e38aa-5cc6-4cb5-af81-7822561f4595' : PhysicalLink 
                            connect sourcePhysicalPort ::> 'Battery'.'PP 1'
                            to targetPhysicalPort ::> 'Controller '.'PP 2' {
                            @CapellaID { eid = "4c6e38aa-5cc6-4cb5-af81-7822561f4595"; } 
                            attribute :>> interfaceName = "PL 1"; 
                        }  
                        interface '0e0e14fc-7093-44de-9a08-929e8c0e8420' : PhysicalLink 
                            connect sourcePhysicalPort ::> 'Sensor'.'PP 2'
                            to targetPhysicalPort ::> 'Controller '.'PP 3' {
                            @CapellaID { eid = "0e0e14fc-7093-44de-9a08-929e8c0e8420"; } 
                            attribute :>> interfaceName = "PL 2"; 
                        }  
                        part '24dae32c-bf53-4b5c-90bc-59b9de2ccf1c' : CPart :> 'Battery'  { 
                            @CapellaID { eid = "24dae32c-bf53-4b5c-90bc-59b9de2ccf1c"; } 
                            attribute :>> aggregationKind = AggregationKind::UNSET; 
                            attribute :>> isFinal = false; 
                            attribute :>> isAbstract = false; 
                            attribute :>> isDerived = false; 
                            attribute :>> isPartOfKey = false; 
                            attribute :>> isReadOnly = false; 
                            attribute :>> isStatic = false; 
                            attribute :>> isMaxInclusive = false; 
                            attribute :>> isMinInclusive = false; 
                            attribute :>> isOrdered = false; 
                            attribute :>> isUnique = false; 
                        }  
                        part 'b64339ce-a922-4e73-8302-6a9ca162aae2' : CPart :> 'Sensor'  { 
                            @CapellaID { eid = "b64339ce-a922-4e73-8302-6a9ca162aae2"; } 
                            attribute :>> aggregationKind = AggregationKind::UNSET; 
                            attribute :>> isFinal = false; 
                            attribute :>> isAbstract = false; 
                            attribute :>> isDerived = false; 
                            attribute :>> isPartOfKey = false; 
                            attribute :>> isReadOnly = false; 
                            attribute :>> isStatic = false; 
                            attribute :>> isMaxInclusive = false; 
                            attribute :>> isMinInclusive = false; 
                            attribute :>> isOrdered = false; 
                            attribute :>> isUnique = false; 
                        }  
                        part '1b5f73f5-9400-4754-ad08-4ed78e4912c6' : CPart :> 'Controller '  { 
                            @CapellaID { eid = "1b5f73f5-9400-4754-ad08-4ed78e4912c6"; } 
                            attribute :>> aggregationKind = AggregationKind::UNSET; 
                            attribute :>> isFinal = false; 
                            attribute :>> isAbstract = false; 
                            attribute :>> isDerived = false; 
                            attribute :>> isPartOfKey = false; 
                            attribute :>> isReadOnly = false; 
                            attribute :>> isStatic = false; 
                            attribute :>> isMaxInclusive = false; 
                            attribute :>> isMinInclusive = false; 
                            attribute :>> isOrdered = false; 
                            attribute :>> isUnique = false; 
                        }  
                        part 'Battery' : PhysicalComponent { 
                            @CapellaID { eid = "69441905-31d2-43a0-acf7-4e060fb5bb8f"; } 
                            attribute :>> isAbstract = false; 
                            attribute :>> isActor = false; 
                            attribute :>> isHuman = false; 
                            attribute :>> kind = PhysicalComponentKind::UNSET; 
                            attribute :>> nature = PhysicalComponentNature::NODE; 
                            port 'PP 1' : PhysicalPort { 
                                @CapellaID { eid = "2dd0ccfa-b491-4ace-a13d-784b68d5b531"; } 
                                attribute :>> aggregationKind = AggregationKind::UNSET; 
                                attribute :>> isFinal = false; 
                                attribute :>> isAbstract = false; 
                                attribute :>> isDerived = false; 
                                attribute :>> isPartOfKey = false; 
                                attribute :>> isReadOnly = false; 
                                attribute :>> isStatic = false; 
                                attribute :>> isMaxInclusive = false; 
                                attribute :>> isMinInclusive = false; 
                                attribute :>> isOrdered = false; 
                                attribute :>> isUnique = false; 
                            }  
                        }  
                        part 'Sensor' : PhysicalComponent { 
                            @CapellaID { eid = "93162cfb-a3b8-4285-8990-e9c4aba9dcab"; } 
                            attribute :>> isAbstract = false; 
                            attribute :>> isActor = false; 
                            attribute :>> isHuman = false; 
                            attribute :>> kind = PhysicalComponentKind::UNSET; 
                            attribute :>> nature = PhysicalComponentNature::NODE; 
                            port 'PP 1' : PhysicalPort { 
                                @CapellaID { eid = "240b876c-e1fe-43a1-9b86-028766b95153"; } 
                                attribute :>> aggregationKind = AggregationKind::UNSET; 
                                attribute :>> isFinal = false; 
                                attribute :>> isAbstract = false; 
                                attribute :>> isDerived = false; 
                                attribute :>> isPartOfKey = false; 
                                attribute :>> isReadOnly = false; 
                                attribute :>> isStatic = false; 
                                attribute :>> isMaxInclusive = false; 
                                attribute :>> isMinInclusive = false; 
                                attribute :>> isOrdered = false; 
                                attribute :>> isUnique = false; 
                            }  
                            port 'PP 2' : PhysicalPort { 
                                @CapellaID { eid = "581aee15-1840-41f2-ab3c-8e3c8ba4284e"; } 
                                attribute :>> aggregationKind = AggregationKind::UNSET; 
                                attribute :>> isFinal = false; 
                                attribute :>> isAbstract = false; 
                                attribute :>> isDerived = false; 
                                attribute :>> isPartOfKey = false; 
                                attribute :>> isReadOnly = false; 
                                attribute :>> isStatic = false; 
                                attribute :>> isMaxInclusive = false; 
                                attribute :>> isMinInclusive = false; 
                                attribute :>> isOrdered = false; 
                                attribute :>> isUnique = false; 
                            }  
                        }  
                        part 'Controller ' : PhysicalComponent { 
                            @CapellaID { eid = "e080e2ab-02ab-40c0-bc1e-4ff2d485ab05"; } 
                            attribute :>> isAbstract = false; 
                            attribute :>> isActor = false; 
                            attribute :>> isHuman = false; 
                            attribute :>> kind = PhysicalComponentKind::UNSET; 
                            attribute :>> nature = PhysicalComponentNature::NODE; 
                            port 'PP 4' : PhysicalPort { 
                                @CapellaID { eid = "ce4c3d6f-4a65-406f-8875-aa79cfd3f2a5"; } 
                                attribute :>> aggregationKind = AggregationKind::UNSET; 
                                attribute :>> isFinal = false; 
                                attribute :>> isAbstract = false; 
                                attribute :>> isDerived = false; 
                                attribute :>> isPartOfKey = false; 
                                attribute :>> isReadOnly = false; 
                                attribute :>> isStatic = false; 
                                attribute :>> isMaxInclusive = false; 
                                attribute :>> isMinInclusive = false; 
                                attribute :>> isOrdered = false; 
                                attribute :>> isUnique = false; 
                            }  
                            port 'PP 2' : PhysicalPort { 
                                @CapellaID { eid = "c70015af-8cb1-494f-8eed-593d10742c91"; } 
                                attribute :>> aggregationKind = AggregationKind::UNSET; 
                                attribute :>> isFinal = false; 
                                attribute :>> isAbstract = false; 
                                attribute :>> isDerived = false; 
                                attribute :>> isPartOfKey = false; 
                                attribute :>> isReadOnly = false; 
                                attribute :>> isStatic = false; 
                                attribute :>> isMaxInclusive = false; 
                                attribute :>> isMinInclusive = false; 
                                attribute :>> isOrdered = false; 
                                attribute :>> isUnique = false; 
                            }  
                            port 'PP 3' : PhysicalPort { 
                                @CapellaID { eid = "348407e5-fab0-494a-a5eb-8dd7bf5c53e4"; } 
                                attribute :>> aggregationKind = AggregationKind::UNSET; 
                                attribute :>> isFinal = false; 
                                attribute :>> isAbstract = false; 
                                attribute :>> isDerived = false; 
                                attribute :>> isPartOfKey = false; 
                                attribute :>> isReadOnly = false; 
                                attribute :>> isStatic = false; 
                                attribute :>> isMaxInclusive = false; 
                                attribute :>> isMinInclusive = false; 
                                attribute :>> isOrdered = false; 
                                attribute :>> isUnique = false; 
                            }  
                        }  
                        ref :>> ownedPhysicalLinks =  ('4c6e38aa-5cc6-4cb5-af81-7822561f4595',
                        '0e0e14fc-7093-44de-9a08-929e8c0e8420'); 
                        ref :>> ownedPhysicalComponents =  ('Battery',
                        'Sensor',
                        'Controller '); 
                    }  
                    part 'Handle Bars' : PhysicalComponent { 
                        @CapellaID { eid = "ea1fd76d-1a7d-48e6-9e88-aa7ad2bb04ec"; } 
                        attribute :>> isAbstract = false; 
                        attribute :>> isActor = false; 
                        attribute :>> isHuman = false; 
                        attribute :>> kind = PhysicalComponentKind::UNSET; 
                        attribute :>> nature = PhysicalComponentNature::NODE; 
                        port 'PP 1' : PhysicalPort { 
                            @CapellaID { eid = "b8da1418-5395-47ae-bd23-3ef1814a7d68"; } 
                            attribute :>> aggregationKind = AggregationKind::UNSET; 
                            attribute :>> isFinal = false; 
                            attribute :>> isAbstract = false; 
                            attribute :>> isDerived = false; 
                            attribute :>> isPartOfKey = false; 
                            attribute :>> isReadOnly = false; 
                            attribute :>> isStatic = false; 
                            attribute :>> isMaxInclusive = false; 
                            attribute :>> isMinInclusive = false; 
                            attribute :>> isOrdered = false; 
                            attribute :>> isUnique = false; 
                        }  
                        port 'PP 2' : PhysicalPort { 
                            @CapellaID { eid = "7607c0f4-a96b-454f-a323-145ee99d6014"; } 
                            attribute :>> aggregationKind = AggregationKind::UNSET; 
                            attribute :>> isFinal = false; 
                            attribute :>> isAbstract = false; 
                            attribute :>> isDerived = false; 
                            attribute :>> isPartOfKey = false; 
                            attribute :>> isReadOnly = false; 
                            attribute :>> isStatic = false; 
                            attribute :>> isMaxInclusive = false; 
                            attribute :>> isMinInclusive = false; 
                            attribute :>> isOrdered = false; 
                            attribute :>> isUnique = false; 
                        }  
                        port 'PP 3' : PhysicalPort { 
                            @CapellaID { eid = "ecaa5631-52dc-4d4d-a31c-c7e18f694bd9"; } 
                            attribute :>> aggregationKind = AggregationKind::UNSET; 
                            attribute :>> isFinal = false; 
                            attribute :>> isAbstract = false; 
                            attribute :>> isDerived = false; 
                            attribute :>> isPartOfKey = false; 
                            attribute :>> isReadOnly = false; 
                            attribute :>> isStatic = false; 
                            attribute :>> isMaxInclusive = false; 
                            attribute :>> isMinInclusive = false; 
                            attribute :>> isOrdered = false; 
                            attribute :>> isUnique = false; 
                        }  
                    }  
                    part 'Left Hydraulic Brake Assembly' : PhysicalComponent { 
                        @CapellaID { eid = "be5efb21-316e-484d-a2e1-fdbb4d25864b"; } 
                        attribute :>> isAbstract = false; 
                        attribute :>> isActor = false; 
                        attribute :>> isHuman = false; 
                        attribute :>> kind = PhysicalComponentKind::UNSET; 
                        attribute :>> nature = PhysicalComponentNature::NODE; 
                        part '8a725f08-0331-45de-8623-6b952201fcb0' : CPart :> 'Left Piston'  { 
                            @CapellaID { eid = "8a725f08-0331-45de-8623-6b952201fcb0"; } 
                            attribute :>> aggregationKind = AggregationKind::UNSET; 
                            attribute :>> isFinal = false; 
                            attribute :>> isAbstract = false; 
                            attribute :>> isDerived = false; 
                            attribute :>> isPartOfKey = false; 
                            attribute :>> isReadOnly = false; 
                            attribute :>> isStatic = false; 
                            attribute :>> isMaxInclusive = false; 
                            attribute :>> isMinInclusive = false; 
                            attribute :>> isOrdered = false; 
                            attribute :>> isUnique = false; 
                            allocation '02cc7a2d-bb44-41a9-a3ac-6ab2e3cc8cf7' : PartDeploymentLink
                                allocate deployedElement ::> 'Control Subsystem'.'79a2f934-431d-4043-96f5-7106c6946b88'
                                to location ::> 'Bike BrakeSystem Library Library'::'Bike BrakeSystem Library'::'Physical Architecture'::'Structure'::'Physical System'.'Left Hydraulic Brake Assembly'.'8a725f08-0331-45de-8623-6b952201fcb0' { 
                                @CapellaID { eid = "02cc7a2d-bb44-41a9-a3ac-6ab2e3cc8cf7"; } 
                            }  
                            ref :>> ownedDeploymentLinks =  ('02cc7a2d-bb44-41a9-a3ac-6ab2e3cc8cf7'); 
                        }  
                        part 'a6bd4806-4d58-4946-84b6-d7bf91421d5d' : CPart :> 'Left Reservior'  { 
                            @CapellaID { eid = "a6bd4806-4d58-4946-84b6-d7bf91421d5d"; } 
                            attribute :>> aggregationKind = AggregationKind::UNSET; 
                            attribute :>> isFinal = false; 
                            attribute :>> isAbstract = false; 
                            attribute :>> isDerived = false; 
                            attribute :>> isPartOfKey = false; 
                            attribute :>> isReadOnly = false; 
                            attribute :>> isStatic = false; 
                            attribute :>> isMaxInclusive = false; 
                            attribute :>> isMinInclusive = false; 
                            attribute :>> isOrdered = false; 
                            attribute :>> isUnique = false; 
                            allocation 'd047ddea-1780-4d39-944d-6d381844e18c' : PartDeploymentLink
                                allocate deployedElement ::> 'Control Subsystem'.'252a4765-3600-4389-84c4-44525af889c0'
                                to location ::> 'Bike BrakeSystem Library Library'::'Bike BrakeSystem Library'::'Physical Architecture'::'Structure'::'Physical System'.'Left Hydraulic Brake Assembly'.'a6bd4806-4d58-4946-84b6-d7bf91421d5d' { 
                                @CapellaID { eid = "d047ddea-1780-4d39-944d-6d381844e18c"; } 
                            }  
                            ref :>> ownedDeploymentLinks =  ('d047ddea-1780-4d39-944d-6d381844e18c'); 
                        }  
                        port 'Cockpit Handle Bars' : PhysicalPort { 
                            @CapellaID { eid = "1ab15901-7a9e-4b65-888c-61091cb8eb0c"; } 
                            attribute :>> aggregationKind = AggregationKind::UNSET; 
                            attribute :>> isFinal = false; 
                            attribute :>> isAbstract = false; 
                            attribute :>> isDerived = false; 
                            attribute :>> isPartOfKey = false; 
                            attribute :>> isReadOnly = false; 
                            attribute :>> isStatic = false; 
                            attribute :>> isMaxInclusive = false; 
                            attribute :>> isMinInclusive = false; 
                            attribute :>> isOrdered = false; 
                            attribute :>> isUnique = false; 
                            ref allocation '63c4c056-fb99-4dd3-b660-2ba56daa6633' : ComponentPortAllocation
                                allocate allocatedPort ::> 'Cockpit Handle Bars'
                                to allocatingPort ::> 'Bike BrakeSystem Library Library'::'Bike BrakeSystem Library'::'Physical Architecture'::'Structure'::'Physical System'.'Control Subsystem'.'Support Left'.'CP 1' { 
                                @CapellaID { eid = "63c4c056-fb99-4dd3-b660-2ba56daa6633"; } 
                            }  
                            ref :>> ownedComponentPortAllocations =  ('63c4c056-fb99-4dd3-b660-2ba56daa6633'); 
                        }  
                        part 'Left Piston' : PhysicalComponent { 
                            @CapellaID { eid = "5e19da1b-54a7-491c-9d01-eefd63e65ee3"; } 
                            attribute :>> isAbstract = false; 
                            attribute :>> isActor = false; 
                            attribute :>> isHuman = false; 
                            attribute :>> kind = PhysicalComponentKind::UNSET; 
                            attribute :>> nature = PhysicalComponentNature::NODE; 
                            attribute 'Mass' : PropertyValueGroup { 
                                @CapellaID { eid = "302c2438-b435-449a-bdfd-803c7326c584"; } 
                                attribute 'Units' : StringPropertyValue  = "g" { 
                                    @CapellaID { eid = "ccddab37-fe89-4d18-8b51-e8f545277aa8"; } 
                                }  
                                attribute 'Max Value' : FloatPropertyValue  = 20.0 { 
                                    @CapellaID { eid = "7af1ae2e-8b9e-4fd6-a613-6ee8da015c06"; } 
                                }  
                                ref :>> ownedPropertyValues =  ('Units',
                                'Max Value'); 
                            }  
                            port 'PP 1' : PhysicalPort { 
                                @CapellaID { eid = "a77add38-88ad-4ff5-acb0-4a62f3d9d800"; } 
                                attribute :>> aggregationKind = AggregationKind::UNSET; 
                                attribute :>> isFinal = false; 
                                attribute :>> isAbstract = false; 
                                attribute :>> isDerived = false; 
                                attribute :>> isPartOfKey = false; 
                                attribute :>> isReadOnly = false; 
                                attribute :>> isStatic = false; 
                                attribute :>> isMaxInclusive = false; 
                                attribute :>> isMinInclusive = false; 
                                attribute :>> isOrdered = false; 
                                attribute :>> isUnique = false; 
                                ref allocation '2545a57a-4be6-4b5c-bb5a-05c47f150f2a' : ComponentPortAllocation
                                    allocate allocatedPort ::> 'PP 1'
                                    to allocatingPort ::> 'Bike BrakeSystem Library Library'::'Bike BrakeSystem Library'::'Physical Architecture'::'Structure'::'Physical System'.'Control Subsystem'.'Left Piston'.'CP 1' { 
                                    @CapellaID { eid = "2545a57a-4be6-4b5c-bb5a-05c47f150f2a"; } 
                                }  
                                ref :>> ownedComponentPortAllocations =  ('2545a57a-4be6-4b5c-bb5a-05c47f150f2a'); 
                            }  
                            port 'PP 2' : PhysicalPort { 
                                @CapellaID { eid = "a5aabd6e-01d1-464c-9b44-9bdbd56bfd03"; } 
                                attribute :>> aggregationKind = AggregationKind::UNSET; 
                                attribute :>> isFinal = false; 
                                attribute :>> isAbstract = false; 
                                attribute :>> isDerived = false; 
                                attribute :>> isPartOfKey = false; 
                                attribute :>> isReadOnly = false; 
                                attribute :>> isStatic = false; 
                                attribute :>> isMaxInclusive = false; 
                                attribute :>> isMinInclusive = false; 
                                attribute :>> isOrdered = false; 
                                attribute :>> isUnique = false; 
                                ref allocation '9e0106c0-ddaa-4225-ac5a-94377cc1ba78' : ComponentPortAllocation
                                    allocate allocatedPort ::> 'PP 2'
                                    to allocatingPort ::> 'Bike BrakeSystem Library Library'::'Bike BrakeSystem Library'::'Physical Architecture'::'Structure'::'Physical System'.'Control Subsystem'.'Left Piston'.'CP 2' { 
                                    @CapellaID { eid = "9e0106c0-ddaa-4225-ac5a-94377cc1ba78"; } 
                                }  
                                ref :>> ownedComponentPortAllocations =  ('9e0106c0-ddaa-4225-ac5a-94377cc1ba78'); 
                            }  
                            port 'PP 3' : PhysicalPort { 
                                @CapellaID { eid = "9dad3efb-3b85-46f7-b7b2-21af2b4ed990"; } 
                                attribute :>> aggregationKind = AggregationKind::UNSET; 
                                attribute :>> isFinal = false; 
                                attribute :>> isAbstract = false; 
                                attribute :>> isDerived = false; 
                                attribute :>> isPartOfKey = false; 
                                attribute :>> isReadOnly = false; 
                                attribute :>> isStatic = false; 
                                attribute :>> isMaxInclusive = false; 
                                attribute :>> isMinInclusive = false; 
                                attribute :>> isOrdered = false; 
                                attribute :>> isUnique = false; 
                                ref allocation '4a17aac2-8ff8-4917-98cd-24ef68df46e8' : ComponentPortAllocation
                                    allocate allocatedPort ::> 'PP 3'
                                    to allocatingPort ::> 'Bike BrakeSystem Library Library'::'Bike BrakeSystem Library'::'Physical Architecture'::'Structure'::'Physical System'.'Control Subsystem'.'Left Piston'.'CP 3' { 
                                    @CapellaID { eid = "4a17aac2-8ff8-4917-98cd-24ef68df46e8"; } 
                                }  
                                ref :>> ownedComponentPortAllocations =  ('4a17aac2-8ff8-4917-98cd-24ef68df46e8'); 
                            }  
                            ref :>> ownedPropertyValueGroups =  ('Mass'); 
                            ref :>> appliedPropertyValueGroups =  ('Mass'); 
                        }  
                        part 'Left Reservior' : PhysicalComponent { 
                            @CapellaID { eid = "656550fb-b1fc-4b33-b7a1-36ff14c8e152"; } 
                            attribute :>> isAbstract = false; 
                            attribute :>> isActor = false; 
                            attribute :>> isHuman = false; 
                            attribute :>> kind = PhysicalComponentKind::UNSET; 
                            attribute :>> nature = PhysicalComponentNature::NODE; 
                            attribute 'Mass' : PropertyValueGroup { 
                                @CapellaID { eid = "164c84d3-f8c5-4be7-af04-e75078c6d4bf"; } 
                                attribute 'Units' : StringPropertyValue  = "g" { 
                                    @CapellaID { eid = "083a64ec-568c-4bfd-a0d9-0f59520076b0"; } 
                                }  
                                attribute 'Max Value' : FloatPropertyValue  = 3.0 { 
                                    @CapellaID { eid = "9c43958f-ae00-468b-8350-18ef9b8b58a3"; } 
                                }  
                                ref :>> ownedPropertyValues =  ('Units',
                                'Max Value'); 
                            }  
                            port 'PP 1' : PhysicalPort { 
                                @CapellaID { eid = "487e5202-b09f-435c-a352-7a5a2088591d"; } 
                                attribute :>> aggregationKind = AggregationKind::UNSET; 
                                attribute :>> isFinal = false; 
                                attribute :>> isAbstract = false; 
                                attribute :>> isDerived = false; 
                                attribute :>> isPartOfKey = false; 
                                attribute :>> isReadOnly = false; 
                                attribute :>> isStatic = false; 
                                attribute :>> isMaxInclusive = false; 
                                attribute :>> isMinInclusive = false; 
                                attribute :>> isOrdered = false; 
                                attribute :>> isUnique = false; 
                                ref allocation 'ae0109f4-9953-42a2-bf0f-519c18bf532a' : ComponentPortAllocation
                                    allocate allocatedPort ::> 'PP 1'
                                    to allocatingPort ::> 'Bike BrakeSystem Library Library'::'Bike BrakeSystem Library'::'Physical Architecture'::'Structure'::'Physical System'.'Control Subsystem'.'Left Resovior'.'CP 1' { 
                                    @CapellaID { eid = "ae0109f4-9953-42a2-bf0f-519c18bf532a"; } 
                                }  
                                ref :>> ownedComponentPortAllocations =  ('ae0109f4-9953-42a2-bf0f-519c18bf532a'); 
                            }  
                            port 'Rider' : PhysicalPort { 
                                @CapellaID { eid = "4beb93fd-b453-4025-901e-a82965595457"; } 
                                attribute :>> aggregationKind = AggregationKind::UNSET; 
                                attribute :>> isFinal = false; 
                                attribute :>> isAbstract = false; 
                                attribute :>> isDerived = false; 
                                attribute :>> isPartOfKey = false; 
                                attribute :>> isReadOnly = false; 
                                attribute :>> isStatic = false; 
                                attribute :>> isMaxInclusive = false; 
                                attribute :>> isMinInclusive = false; 
                                attribute :>> isOrdered = false; 
                                attribute :>> isUnique = false; 
                                ref allocation 'a8cbe54d-c290-4c76-9625-51e19b4c3b4a' : ComponentPortAllocation
                                    allocate allocatedPort ::> 'Rider'
                                    to allocatingPort ::> 'Bike BrakeSystem Library Library'::'Bike BrakeSystem Library'::'Physical Architecture'::'Structure'::'Physical System'.'Control Subsystem'.'Left Resovior'.'CP 2' { 
                                    @CapellaID { eid = "a8cbe54d-c290-4c76-9625-51e19b4c3b4a"; } 
                                }  
                                ref :>> ownedComponentPortAllocations =  ('a8cbe54d-c290-4c76-9625-51e19b4c3b4a'); 
                            }  
                            ref :>> ownedPropertyValueGroups =  ('Mass'); 
                            ref :>> appliedPropertyValueGroups =  ('Mass'); 
                        }  
                        ref :>> ownedPhysicalComponents =  ('Left Piston',
                        'Left Reservior'); 
                    }  
                    part 'Front Caliper' : PhysicalComponent { 
                        @CapellaID { eid = "6e4b7c7d-aa38-49c1-9dc4-5a7a19d265d4"; } 
                        attribute :>> isAbstract = false; 
                        attribute :>> isActor = false; 
                        attribute :>> isHuman = false; 
                        attribute :>> kind = PhysicalComponentKind::UNSET; 
                        attribute :>> nature = PhysicalComponentNature::NODE; 
                        attribute 'Mass' : PropertyValueGroup { 
                            @CapellaID { eid = "8ac9aa2b-5476-4b2f-bb4f-7ed7293ed3db"; } 
                            attribute 'Units' : StringPropertyValue  = "g" { 
                                @CapellaID { eid = "39ad358e-ec9c-4d8c-8dfc-50b59f24d5fc"; } 
                            }  
                            attribute 'Max Value' : FloatPropertyValue  = 10.0 { 
                                @CapellaID { eid = "a5d2f651-eb84-4938-b941-2f7ca393a714"; } 
                            }  
                            ref :>> ownedPropertyValues =  ('Units',
                            'Max Value'); 
                        }  
                        port 'PP 2_1' : PhysicalPort { 
                            @CapellaID { eid = "3a662e29-3f40-44d4-a149-ed7cd950b538"; } 
                            attribute :>> aggregationKind = AggregationKind::UNSET; 
                            attribute :>> isFinal = false; 
                            attribute :>> isAbstract = false; 
                            attribute :>> isDerived = false; 
                            attribute :>> isPartOfKey = false; 
                            attribute :>> isReadOnly = false; 
                            attribute :>> isStatic = false; 
                            attribute :>> isMaxInclusive = false; 
                            attribute :>> isMinInclusive = false; 
                            attribute :>> isOrdered = false; 
                            attribute :>> isUnique = false; 
                            ref allocation 'b8c12dbd-8ab6-4202-a2f1-e5190cb84957' : ComponentPortAllocation
                                allocate allocatedPort ::> 'PP 2_1'
                                to allocatingPort ::> 'Bike BrakeSystem Library Library'::'Bike BrakeSystem Library'::'Physical Architecture'::'Structure'::'Physical System'.'Break Actuation Subsystem '.'Front Caliper'.'CP 2' { 
                                @CapellaID { eid = "b8c12dbd-8ab6-4202-a2f1-e5190cb84957"; } 
                            }  
                            ref :>> ownedComponentPortAllocations =  ('b8c12dbd-8ab6-4202-a2f1-e5190cb84957'); 
                        }  
                        port 'PP 3_1' : PhysicalPort { 
                            @CapellaID { eid = "4e31e90d-80d7-49da-8737-a5c16ea1ad2f"; } 
                            attribute :>> aggregationKind = AggregationKind::UNSET; 
                            attribute :>> isFinal = false; 
                            attribute :>> isAbstract = false; 
                            attribute :>> isDerived = false; 
                            attribute :>> isPartOfKey = false; 
                            attribute :>> isReadOnly = false; 
                            attribute :>> isStatic = false; 
                            attribute :>> isMaxInclusive = false; 
                            attribute :>> isMinInclusive = false; 
                            attribute :>> isOrdered = false; 
                            attribute :>> isUnique = false; 
                            ref allocation '78926d9d-d2d9-434b-9845-a0ec47b98014' : ComponentPortAllocation
                                allocate allocatedPort ::> 'PP 3_1'
                                to allocatingPort ::> 'Bike BrakeSystem Library Library'::'Bike BrakeSystem Library'::'Physical Architecture'::'Structure'::'Physical System'.'Break Actuation Subsystem '.'Front Caliper'.'CP 3' { 
                                @CapellaID { eid = "78926d9d-d2d9-434b-9845-a0ec47b98014"; } 
                            }  
                            ref :>> ownedComponentPortAllocations =  ('78926d9d-d2d9-434b-9845-a0ec47b98014'); 
                        }  
                        port 'Frame' : PhysicalPort { 
                            @CapellaID { eid = "69a783d6-5b82-4329-accb-945a0f30a9c7"; } 
                            attribute :>> aggregationKind = AggregationKind::UNSET; 
                            attribute :>> isFinal = false; 
                            attribute :>> isAbstract = false; 
                            attribute :>> isDerived = false; 
                            attribute :>> isPartOfKey = false; 
                            attribute :>> isReadOnly = false; 
                            attribute :>> isStatic = false; 
                            attribute :>> isMaxInclusive = false; 
                            attribute :>> isMinInclusive = false; 
                            attribute :>> isOrdered = false; 
                            attribute :>> isUnique = false; 
                            ref allocation 'fc32a380-db58-431c-ba57-726fe2097e77' : ComponentPortAllocation
                                allocate allocatedPort ::> 'Frame'
                                to allocatingPort ::> 'Bike BrakeSystem Library Library'::'Bike BrakeSystem Library'::'Physical Architecture'::'Structure'::'Physical System'.'Break Actuation Subsystem '.'Front Caliper'.'CP 4' { 
                                @CapellaID { eid = "fc32a380-db58-431c-ba57-726fe2097e77"; } 
                            }  
                            ref :>> ownedComponentPortAllocations =  ('fc32a380-db58-431c-ba57-726fe2097e77'); 
                        }  
                        port 'PP 4' : PhysicalPort { 
                            @CapellaID { eid = "b0d0bd11-32b2-47b9-a54a-d3a338215837"; } 
                            attribute :>> aggregationKind = AggregationKind::UNSET; 
                            attribute :>> isFinal = false; 
                            attribute :>> isAbstract = false; 
                            attribute :>> isDerived = false; 
                            attribute :>> isPartOfKey = false; 
                            attribute :>> isReadOnly = false; 
                            attribute :>> isStatic = false; 
                            attribute :>> isMaxInclusive = false; 
                            attribute :>> isMinInclusive = false; 
                            attribute :>> isOrdered = false; 
                            attribute :>> isUnique = false; 
                            ref allocation '1f3487fc-8750-4358-bf5e-f04d05b69833' : ComponentPortAllocation
                                allocate allocatedPort ::> 'PP 4'
                                to allocatingPort ::> 'Bike BrakeSystem Library Library'::'Bike BrakeSystem Library'::'Physical Architecture'::'Structure'::'Physical System'.'Break Actuation Subsystem '.'Front Caliper'.'CP 1' { 
                                @CapellaID { eid = "1f3487fc-8750-4358-bf5e-f04d05b69833"; } 
                            }  
                            ref :>> ownedComponentPortAllocations =  ('1f3487fc-8750-4358-bf5e-f04d05b69833'); 
                        }  
                        ref :>> ownedPropertyValueGroups =  ('Mass'); 
                        ref :>> appliedPropertyValueGroups =  ('Mass'); 
                    }  
                    part 'Front Rotor' : PhysicalComponent { 
                        @CapellaID { eid = "d670d983-6078-4c75-ad60-a08cef92a5f6"; } 
                        attribute :>> isAbstract = false; 
                        attribute :>> isActor = false; 
                        attribute :>> isHuman = false; 
                        attribute :>> kind = PhysicalComponentKind::UNSET; 
                        attribute :>> nature = PhysicalComponentNature::NODE; 
                        attribute 'Mass' : PropertyValueGroup { 
                            @CapellaID { eid = "fc2f08f9-89b0-403f-97e8-875907f43a7c"; } 
                            attribute 'Units' : StringPropertyValue  = "g" { 
                                @CapellaID { eid = "9e59d76b-ff0a-47e7-984d-293a35cba851"; } 
                            }  
                            attribute 'Max Value' : FloatPropertyValue  = 261.0 { 
                                @CapellaID { eid = "880ad45b-d4f1-440d-a7c3-9659cc656c4d"; } 
                            }  
                            ref :>> ownedPropertyValues =  ('Units',
                            'Max Value'); 
                        }  
                        attribute 'Cost' : PropertyValueGroup { 
                            @CapellaID { eid = "323b984f-5d09-4490-a053-35b579fdb530"; } 
                            attribute 'Units' : StringPropertyValue  = "$" { 
                                @CapellaID { eid = "4c458916-a68c-402a-b7de-207d6d452cb3"; } 
                            }  
                            attribute 'Value' : FloatPropertyValue  = 20.0 { 
                                @CapellaID { eid = "74f94af9-bdf5-45a3-8429-c23d3d9e1033"; } 
                            }  
                            ref :>> ownedPropertyValues =  ('Units',
                            'Value'); 
                        }  
                        port 'PP 1_1' : PhysicalPort { 
                            @CapellaID { eid = "2ae4a6d2-8dc0-46b9-9e52-5c14e379d4ca"; } 
                            attribute :>> aggregationKind = AggregationKind::UNSET; 
                            attribute :>> isFinal = false; 
                            attribute :>> isAbstract = false; 
                            attribute :>> isDerived = false; 
                            attribute :>> isPartOfKey = false; 
                            attribute :>> isReadOnly = false; 
                            attribute :>> isStatic = false; 
                            attribute :>> isMaxInclusive = false; 
                            attribute :>> isMinInclusive = false; 
                            attribute :>> isOrdered = false; 
                            attribute :>> isUnique = false; 
                        }  
                        port 'PP 2_1' : PhysicalPort { 
                            @CapellaID { eid = "8f1f3680-7034-4209-b56a-5dceba2fd11e"; } 
                            attribute :>> aggregationKind = AggregationKind::UNSET; 
                            attribute :>> isFinal = false; 
                            attribute :>> isAbstract = false; 
                            attribute :>> isDerived = false; 
                            attribute :>> isPartOfKey = false; 
                            attribute :>> isReadOnly = false; 
                            attribute :>> isStatic = false; 
                            attribute :>> isMaxInclusive = false; 
                            attribute :>> isMinInclusive = false; 
                            attribute :>> isOrdered = false; 
                            attribute :>> isUnique = false; 
                            ref allocation '773ae3c7-e6be-4872-811f-8bdbaa095404' : ComponentPortAllocation
                                allocate allocatedPort ::> 'PP 2_1'
                                to allocatingPort ::> 'Bike BrakeSystem Library Library'::'Bike BrakeSystem Library'::'Physical Architecture'::'Structure'::'Physical System'.'Break Actuation Subsystem '.'Front Rotor'.'CP 2' { 
                                @CapellaID { eid = "773ae3c7-e6be-4872-811f-8bdbaa095404"; } 
                            }  
                            ref :>> ownedComponentPortAllocations =  ('773ae3c7-e6be-4872-811f-8bdbaa095404'); 
                        }  
                        port 'PP 3' : PhysicalPort { 
                            @CapellaID { eid = "63326c6c-052d-4567-a03a-3c6c3639c93e"; } 
                            attribute :>> aggregationKind = AggregationKind::UNSET; 
                            attribute :>> isFinal = false; 
                            attribute :>> isAbstract = false; 
                            attribute :>> isDerived = false; 
                            attribute :>> isPartOfKey = false; 
                            attribute :>> isReadOnly = false; 
                            attribute :>> isStatic = false; 
                            attribute :>> isMaxInclusive = false; 
                            attribute :>> isMinInclusive = false; 
                            attribute :>> isOrdered = false; 
                            attribute :>> isUnique = false; 
                            ref allocation '670fd3a1-aa5e-4ba3-99e2-71b16cbae3d0' : ComponentPortAllocation
                                allocate allocatedPort ::> 'PP 3'
                                to allocatingPort ::> 'Bike BrakeSystem Library Library'::'Bike BrakeSystem Library'::'Physical Architecture'::'Structure'::'Physical System'.'Break Actuation Subsystem '.'Front Rotor'.'CP 1' { 
                                @CapellaID { eid = "670fd3a1-aa5e-4ba3-99e2-71b16cbae3d0"; } 
                            }  
                            ref :>> ownedComponentPortAllocations =  ('670fd3a1-aa5e-4ba3-99e2-71b16cbae3d0'); 
                        }  
                        ref :>> ownedPropertyValueGroups =  ('Mass',
                        'Cost'); 
                        ref :>> appliedPropertyValueGroups =  ('Mass',
                        'Cost'); 
                    }  
                    part 'PAD FL' : PhysicalComponent { 
                        @CapellaID { eid = "4b1c3f76-22ea-4a69-99e2-66ab4176e57a"; } 
                        attribute :>> isAbstract = false; 
                        attribute :>> isActor = false; 
                        attribute :>> isHuman = false; 
                        attribute :>> kind = PhysicalComponentKind::UNSET; 
                        attribute :>> nature = PhysicalComponentNature::NODE; 
                        attribute 'Mass' : PropertyValueGroup { 
                            @CapellaID { eid = "b928ff2b-374c-4e1d-8c17-3d25066c031d"; } 
                            attribute 'Units' : StringPropertyValue  = "g" { 
                                @CapellaID { eid = "c02810bd-192b-4f15-bc60-dc6104b51c4a"; } 
                            }  
                            attribute 'Max Value' : FloatPropertyValue  = 4.0 { 
                                @CapellaID { eid = "c2b5853a-8287-4a7a-a60f-85609475ef5d"; } 
                            }  
                            ref :>> ownedPropertyValues =  ('Units',
                            'Max Value'); 
                        }  
                        port 'PP 1_1' : PhysicalPort { 
                            @CapellaID { eid = "80f5caad-04cb-4e49-a2b8-78dc0b54bf0d"; } 
                            attribute :>> aggregationKind = AggregationKind::UNSET; 
                            attribute :>> isFinal = false; 
                            attribute :>> isAbstract = false; 
                            attribute :>> isDerived = false; 
                            attribute :>> isPartOfKey = false; 
                            attribute :>> isReadOnly = false; 
                            attribute :>> isStatic = false; 
                            attribute :>> isMaxInclusive = false; 
                            attribute :>> isMinInclusive = false; 
                            attribute :>> isOrdered = false; 
                            attribute :>> isUnique = false; 
                            ref allocation '6675487f-ba1d-4472-a767-d8aa06855424' : ComponentPortAllocation
                                allocate allocatedPort ::> 'PP 1_1'
                                to allocatingPort ::> 'Bike BrakeSystem Library Library'::'Bike BrakeSystem Library'::'Physical Architecture'::'Structure'::'Physical System'.'Break Actuation Subsystem '.'Left Front Pad'.'CP 1' { 
                                @CapellaID { eid = "6675487f-ba1d-4472-a767-d8aa06855424"; } 
                            }  
                            ref :>> ownedComponentPortAllocations =  ('6675487f-ba1d-4472-a767-d8aa06855424'); 
                        }  
                        port 'PP 2_1' : PhysicalPort { 
                            @CapellaID { eid = "0fd364ad-4e59-4a32-865a-09ae8f508496"; } 
                            attribute :>> aggregationKind = AggregationKind::UNSET; 
                            attribute :>> isFinal = false; 
                            attribute :>> isAbstract = false; 
                            attribute :>> isDerived = false; 
                            attribute :>> isPartOfKey = false; 
                            attribute :>> isReadOnly = false; 
                            attribute :>> isStatic = false; 
                            attribute :>> isMaxInclusive = false; 
                            attribute :>> isMinInclusive = false; 
                            attribute :>> isOrdered = false; 
                            attribute :>> isUnique = false; 
                            ref allocation '5f13f7e8-8283-4471-ba05-f325ebc1b5ab' : ComponentPortAllocation
                                allocate allocatedPort ::> 'PP 2_1'
                                to allocatingPort ::> 'Bike BrakeSystem Library Library'::'Bike BrakeSystem Library'::'Physical Architecture'::'Structure'::'Physical System'.'Break Actuation Subsystem '.'Left Front Pad'.'CP 2' { 
                                @CapellaID { eid = "5f13f7e8-8283-4471-ba05-f325ebc1b5ab"; } 
                            }  
                            ref :>> ownedComponentPortAllocations =  ('5f13f7e8-8283-4471-ba05-f325ebc1b5ab'); 
                        }  
                        ref :>> ownedPropertyValueGroups =  ('Mass'); 
                        ref :>> appliedPropertyValueGroups =  ('Mass'); 
                    }  
                    part 'PAD FR' : PhysicalComponent { 
                        @CapellaID { eid = "58b4e8d0-4a8f-4215-b468-f09b5eb9ae8b"; } 
                        attribute :>> isAbstract = false; 
                        attribute :>> isActor = false; 
                        attribute :>> isHuman = false; 
                        attribute :>> kind = PhysicalComponentKind::UNSET; 
                        attribute :>> nature = PhysicalComponentNature::NODE; 
                        attribute 'Mass' : PropertyValueGroup { 
                            @CapellaID { eid = "4833d1be-7b27-4e8b-9db0-03053500711e"; } 
                            attribute 'Units' : StringPropertyValue  = "g" { 
                                @CapellaID { eid = "786cc683-368d-4722-8762-e19fd1842aaf"; } 
                            }  
                            attribute 'Max Value' : FloatPropertyValue  = 5.0 { 
                                @CapellaID { eid = "df5be3a9-ef64-4640-b2b2-1cd0601174af"; } 
                            }  
                            ref :>> ownedPropertyValues =  ('Units',
                            'Max Value'); 
                        }  
                        port 'PP 1_1' : PhysicalPort { 
                            @CapellaID { eid = "351566d5-732e-4374-ad8e-bcd1f5871363"; } 
                            attribute :>> aggregationKind = AggregationKind::UNSET; 
                            attribute :>> isFinal = false; 
                            attribute :>> isAbstract = false; 
                            attribute :>> isDerived = false; 
                            attribute :>> isPartOfKey = false; 
                            attribute :>> isReadOnly = false; 
                            attribute :>> isStatic = false; 
                            attribute :>> isMaxInclusive = false; 
                            attribute :>> isMinInclusive = false; 
                            attribute :>> isOrdered = false; 
                            attribute :>> isUnique = false; 
                            ref allocation '1f87aae8-8a6f-4285-b216-9acd1f2ecc76' : ComponentPortAllocation
                                allocate allocatedPort ::> 'PP 1_1'
                                to allocatingPort ::> 'Bike BrakeSystem Library Library'::'Bike BrakeSystem Library'::'Physical Architecture'::'Structure'::'Physical System'.'Break Actuation Subsystem '.'Right Front Pad'.'CP 1' { 
                                @CapellaID { eid = "1f87aae8-8a6f-4285-b216-9acd1f2ecc76"; } 
                            }  
                            ref :>> ownedComponentPortAllocations =  ('1f87aae8-8a6f-4285-b216-9acd1f2ecc76'); 
                        }  
                        port 'PP 2_1' : PhysicalPort { 
                            @CapellaID { eid = "0df247f9-a60b-460a-b03b-3ae0a22c68fe"; } 
                            attribute :>> aggregationKind = AggregationKind::UNSET; 
                            attribute :>> isFinal = false; 
                            attribute :>> isAbstract = false; 
                            attribute :>> isDerived = false; 
                            attribute :>> isPartOfKey = false; 
                            attribute :>> isReadOnly = false; 
                            attribute :>> isStatic = false; 
                            attribute :>> isMaxInclusive = false; 
                            attribute :>> isMinInclusive = false; 
                            attribute :>> isOrdered = false; 
                            attribute :>> isUnique = false; 
                        }  
                        ref :>> ownedPropertyValueGroups =  ('Mass'); 
                        ref :>> appliedPropertyValueGroups =  ('Mass'); 
                    }  
                    part 'Brake Lever_2' : PhysicalComponent { 
                        @CapellaID { eid = "cf791a8d-8997-485c-87b8-ea9fb977ad35"; } 
                        attribute :>> isAbstract = false; 
                        attribute :>> isActor = false; 
                        attribute :>> isHuman = false; 
                        attribute :>> kind = PhysicalComponentKind::UNSET; 
                        attribute :>> nature = PhysicalComponentNature::NODE; 
                        port 'PP 1_2' : PhysicalPort { 
                            @CapellaID { eid = "4c494f78-88e3-4e74-be95-0ac380cb3843"; } 
                            attribute :>> aggregationKind = AggregationKind::UNSET; 
                            attribute :>> isFinal = false; 
                            attribute :>> isAbstract = false; 
                            attribute :>> isDerived = false; 
                            attribute :>> isPartOfKey = false; 
                            attribute :>> isReadOnly = false; 
                            attribute :>> isStatic = false; 
                            attribute :>> isMaxInclusive = false; 
                            attribute :>> isMinInclusive = false; 
                            attribute :>> isOrdered = false; 
                            attribute :>> isUnique = false; 
                        }  
                    }  
                    part 'Hydraulic Brake Assembly_2' : PhysicalComponent { 
                        @CapellaID { eid = "96e89bce-46a7-4b29-af16-372572971152"; } 
                        attribute :>> isAbstract = false; 
                        attribute :>> isActor = false; 
                        attribute :>> isHuman = false; 
                        attribute :>> kind = PhysicalComponentKind::UNSET; 
                        attribute :>> nature = PhysicalComponentNature::NODE; 
                        part 'c874dba2-35c8-4c4d-b89e-fa9cbcbbccc5' : CPart :> 'Piston_2'  { 
                            @CapellaID { eid = "c874dba2-35c8-4c4d-b89e-fa9cbcbbccc5"; } 
                            attribute :>> aggregationKind = AggregationKind::UNSET; 
                            attribute :>> isFinal = false; 
                            attribute :>> isAbstract = false; 
                            attribute :>> isDerived = false; 
                            attribute :>> isPartOfKey = false; 
                            attribute :>> isReadOnly = false; 
                            attribute :>> isStatic = false; 
                            attribute :>> isMaxInclusive = false; 
                            attribute :>> isMinInclusive = false; 
                            attribute :>> isOrdered = false; 
                            attribute :>> isUnique = false; 
                        }  
                        part 'b2fc7729-706d-4000-9002-729bb9d7b5db' : CPart :> 'Reservior_2'  { 
                            @CapellaID { eid = "b2fc7729-706d-4000-9002-729bb9d7b5db"; } 
                            attribute :>> aggregationKind = AggregationKind::UNSET; 
                            attribute :>> isFinal = false; 
                            attribute :>> isAbstract = false; 
                            attribute :>> isDerived = false; 
                            attribute :>> isPartOfKey = false; 
                            attribute :>> isReadOnly = false; 
                            attribute :>> isStatic = false; 
                            attribute :>> isMaxInclusive = false; 
                            attribute :>> isMinInclusive = false; 
                            attribute :>> isOrdered = false; 
                            attribute :>> isUnique = false; 
                        }  
                        part 'Piston_2' : PhysicalComponent { 
                            @CapellaID { eid = "a341f47f-b7ca-4b15-b016-dd62d9814a1e"; } 
                            attribute :>> isAbstract = false; 
                            attribute :>> isActor = false; 
                            attribute :>> isHuman = false; 
                            attribute :>> kind = PhysicalComponentKind::UNSET; 
                            attribute :>> nature = PhysicalComponentNature::NODE; 
                            port 'PP 1_2' : PhysicalPort { 
                                @CapellaID { eid = "d26ae063-1380-491f-bbc1-a62014f3ec19"; } 
                                attribute :>> aggregationKind = AggregationKind::UNSET; 
                                attribute :>> isFinal = false; 
                                attribute :>> isAbstract = false; 
                                attribute :>> isDerived = false; 
                                attribute :>> isPartOfKey = false; 
                                attribute :>> isReadOnly = false; 
                                attribute :>> isStatic = false; 
                                attribute :>> isMaxInclusive = false; 
                                attribute :>> isMinInclusive = false; 
                                attribute :>> isOrdered = false; 
                                attribute :>> isUnique = false; 
                            }  
                            port 'PP 2_2' : PhysicalPort { 
                                @CapellaID { eid = "f7f6a0f3-fd00-4727-9ce0-6c01e780e91e"; } 
                                attribute :>> aggregationKind = AggregationKind::UNSET; 
                                attribute :>> isFinal = false; 
                                attribute :>> isAbstract = false; 
                                attribute :>> isDerived = false; 
                                attribute :>> isPartOfKey = false; 
                                attribute :>> isReadOnly = false; 
                                attribute :>> isStatic = false; 
                                attribute :>> isMaxInclusive = false; 
                                attribute :>> isMinInclusive = false; 
                                attribute :>> isOrdered = false; 
                                attribute :>> isUnique = false; 
                            }  
                            port 'PP 3_2' : PhysicalPort { 
                                @CapellaID { eid = "6af2084a-d049-4021-aca8-dbb50abf346b"; } 
                                attribute :>> aggregationKind = AggregationKind::UNSET; 
                                attribute :>> isFinal = false; 
                                attribute :>> isAbstract = false; 
                                attribute :>> isDerived = false; 
                                attribute :>> isPartOfKey = false; 
                                attribute :>> isReadOnly = false; 
                                attribute :>> isStatic = false; 
                                attribute :>> isMaxInclusive = false; 
                                attribute :>> isMinInclusive = false; 
                                attribute :>> isOrdered = false; 
                                attribute :>> isUnique = false; 
                            }  
                        }  
                        part 'Reservior_2' : PhysicalComponent { 
                            @CapellaID { eid = "588b3456-ef32-4d94-a554-1e20e533d2a6"; } 
                            attribute :>> isAbstract = false; 
                            attribute :>> isActor = false; 
                            attribute :>> isHuman = false; 
                            attribute :>> kind = PhysicalComponentKind::UNSET; 
                            attribute :>> nature = PhysicalComponentNature::NODE; 
                            port 'PP 1_2' : PhysicalPort { 
                                @CapellaID { eid = "f3007d47-66a6-4495-9ae8-5ee48f2bc048"; } 
                                attribute :>> aggregationKind = AggregationKind::UNSET; 
                                attribute :>> isFinal = false; 
                                attribute :>> isAbstract = false; 
                                attribute :>> isDerived = false; 
                                attribute :>> isPartOfKey = false; 
                                attribute :>> isReadOnly = false; 
                                attribute :>> isStatic = false; 
                                attribute :>> isMaxInclusive = false; 
                                attribute :>> isMinInclusive = false; 
                                attribute :>> isOrdered = false; 
                                attribute :>> isUnique = false; 
                            }  
                        }  
                        ref :>> ownedPhysicalComponents =  ('Piston_2',
                        'Reservior_2'); 
                    }  
                    part 'Rear Wheel Assembly' : PhysicalComponent { 
                        @CapellaID { eid = "9b4becf1-15c8-460e-b599-c1300255aee0"; } 
                        attribute :>> isAbstract = false; 
                        attribute :>> isActor = false; 
                        attribute :>> isHuman = false; 
                        attribute :>> kind = PhysicalComponentKind::UNSET; 
                        attribute :>> nature = PhysicalComponentNature::NODE; 
                        port 'PP 1' : PhysicalPort { 
                            @CapellaID { eid = "32b81515-0844-48d4-a253-fe2b4e938723"; } 
                            attribute :>> aggregationKind = AggregationKind::UNSET; 
                            attribute :>> isFinal = false; 
                            attribute :>> isAbstract = false; 
                            attribute :>> isDerived = false; 
                            attribute :>> isPartOfKey = false; 
                            attribute :>> isReadOnly = false; 
                            attribute :>> isStatic = false; 
                            attribute :>> isMaxInclusive = false; 
                            attribute :>> isMinInclusive = false; 
                            attribute :>> isOrdered = false; 
                            attribute :>> isUnique = false; 
                        }  
                        port 'PP 2' : PhysicalPort { 
                            @CapellaID { eid = "c1bcbe25-ff33-42dc-b8d0-cfd239f20bc0"; } 
                            attribute :>> aggregationKind = AggregationKind::UNSET; 
                            attribute :>> isFinal = false; 
                            attribute :>> isAbstract = false; 
                            attribute :>> isDerived = false; 
                            attribute :>> isPartOfKey = false; 
                            attribute :>> isReadOnly = false; 
                            attribute :>> isStatic = false; 
                            attribute :>> isMaxInclusive = false; 
                            attribute :>> isMinInclusive = false; 
                            attribute :>> isOrdered = false; 
                            attribute :>> isUnique = false; 
                        }  
                    }  
                    part 'Front Wheel Assembly' : PhysicalComponent { 
                        @CapellaID { eid = "c3d36d29-15de-4326-9b0a-26bf93ca295b"; } 
                        attribute :>> isAbstract = false; 
                        attribute :>> isActor = false; 
                        attribute :>> isHuman = false; 
                        attribute :>> kind = PhysicalComponentKind::UNSET; 
                        attribute :>> nature = PhysicalComponentNature::NODE; 
                        port 'PP 1' : PhysicalPort { 
                            @CapellaID { eid = "7b580c8b-11c5-432a-ac10-3e75634cf011"; } 
                            attribute :>> aggregationKind = AggregationKind::UNSET; 
                            attribute :>> isFinal = false; 
                            attribute :>> isAbstract = false; 
                            attribute :>> isDerived = false; 
                            attribute :>> isPartOfKey = false; 
                            attribute :>> isReadOnly = false; 
                            attribute :>> isStatic = false; 
                            attribute :>> isMaxInclusive = false; 
                            attribute :>> isMinInclusive = false; 
                            attribute :>> isOrdered = false; 
                            attribute :>> isUnique = false; 
                        }  
                        port 'PP 2' : PhysicalPort { 
                            @CapellaID { eid = "ce757d5f-9e25-4351-a596-f4182e33e7ba"; } 
                            attribute :>> aggregationKind = AggregationKind::UNSET; 
                            attribute :>> isFinal = false; 
                            attribute :>> isAbstract = false; 
                            attribute :>> isDerived = false; 
                            attribute :>> isPartOfKey = false; 
                            attribute :>> isReadOnly = false; 
                            attribute :>> isStatic = false; 
                            attribute :>> isMaxInclusive = false; 
                            attribute :>> isMinInclusive = false; 
                            attribute :>> isOrdered = false; 
                            attribute :>> isUnique = false; 
                        }  
                    }  
                    part 'Right Brake Lever' : PhysicalComponent { 
                        @CapellaID { eid = "d2d39e46-931b-46ba-9766-b87927d85d5b"; } 
                        attribute :>> isAbstract = false; 
                        attribute :>> isActor = false; 
                        attribute :>> isHuman = false; 
                        attribute :>> kind = PhysicalComponentKind::UNSET; 
                        attribute :>> nature = PhysicalComponentNature::NODE; 
                        attribute 'Mass' : PropertyValueGroup { 
                            @CapellaID { eid = "3a316499-779a-4d0a-8c29-65266eb8c526"; } 
                            attribute 'Units' : StringPropertyValue  = "g" { 
                                @CapellaID { eid = "4dd53965-13d8-436a-9108-cd94d14dabea"; } 
                            }  
                            attribute 'Max Value' : FloatPropertyValue  = 14.0 { 
                                @CapellaID { eid = "a496225a-441c-4c2c-9b34-9817aa9461d3"; } 
                            }  
                            ref :>> ownedPropertyValues =  ('Units',
                            'Max Value'); 
                        }  
                        port 'PP 1_3' : PhysicalPort { 
                            @CapellaID { eid = "861c189c-da47-44e5-bc2a-2280169244e1"; } 
                            attribute :>> aggregationKind = AggregationKind::UNSET; 
                            attribute :>> isFinal = false; 
                            attribute :>> isAbstract = false; 
                            attribute :>> isDerived = false; 
                            attribute :>> isPartOfKey = false; 
                            attribute :>> isReadOnly = false; 
                            attribute :>> isStatic = false; 
                            attribute :>> isMaxInclusive = false; 
                            attribute :>> isMinInclusive = false; 
                            attribute :>> isOrdered = false; 
                            attribute :>> isUnique = false; 
                            ref allocation 'afb590f7-bb74-4537-8444-7354652e6991' : ComponentPortAllocation
                                allocate allocatedPort ::> 'PP 1_3'
                                to allocatingPort ::> 'Bike BrakeSystem Library Library'::'Bike BrakeSystem Library'::'Physical Architecture'::'Structure'::'Physical System'.'Control Subsystem'.'Right level'.'CP 2' { 
                                @CapellaID { eid = "afb590f7-bb74-4537-8444-7354652e6991"; } 
                            }  
                            ref :>> ownedComponentPortAllocations =  ('afb590f7-bb74-4537-8444-7354652e6991'); 
                        }  
                        port 'Rider' : PhysicalPort { 
                            @CapellaID { eid = "39c15a63-f4de-47fe-b47e-854e59c57692"; } 
                            attribute :>> aggregationKind = AggregationKind::UNSET; 
                            attribute :>> isFinal = false; 
                            attribute :>> isAbstract = false; 
                            attribute :>> isDerived = false; 
                            attribute :>> isPartOfKey = false; 
                            attribute :>> isReadOnly = false; 
                            attribute :>> isStatic = false; 
                            attribute :>> isMaxInclusive = false; 
                            attribute :>> isMinInclusive = false; 
                            attribute :>> isOrdered = false; 
                            attribute :>> isUnique = false; 
                        }  
                        ref :>> ownedPropertyValueGroups =  ('Mass'); 
                        ref :>> appliedPropertyValueGroups =  ('Mass'); 
                    }  
                    part 'Right Hydraulic Brake Assembly' : PhysicalComponent { 
                        @CapellaID { eid = "7188d833-a20b-4fbe-b6d2-c4d1708e8d15"; } 
                        attribute :>> isAbstract = false; 
                        attribute :>> isActor = false; 
                        attribute :>> isHuman = false; 
                        attribute :>> kind = PhysicalComponentKind::UNSET; 
                        attribute :>> nature = PhysicalComponentNature::NODE; 
                        part '7f96119c-17f6-41d4-a9d7-d5a28a99e18d' : CPart :> 'Right Piston'  { 
                            @CapellaID { eid = "7f96119c-17f6-41d4-a9d7-d5a28a99e18d"; } 
                            attribute :>> aggregationKind = AggregationKind::UNSET; 
                            attribute :>> isFinal = false; 
                            attribute :>> isAbstract = false; 
                            attribute :>> isDerived = false; 
                            attribute :>> isPartOfKey = false; 
                            attribute :>> isReadOnly = false; 
                            attribute :>> isStatic = false; 
                            attribute :>> isMaxInclusive = false; 
                            attribute :>> isMinInclusive = false; 
                            attribute :>> isOrdered = false; 
                            attribute :>> isUnique = false; 
                            allocation '3610c49c-220d-4544-8a7e-704fd8a8d9fc' : PartDeploymentLink
                                allocate deployedElement ::> 'Control Subsystem'.'b0b283c7-94e1-4570-a52e-787d7e6f4ec9'
                                to location ::> 'Bike BrakeSystem Library Library'::'Bike BrakeSystem Library'::'Physical Architecture'::'Structure'::'Physical System'.'Right Hydraulic Brake Assembly'.'7f96119c-17f6-41d4-a9d7-d5a28a99e18d' { 
                                @CapellaID { eid = "3610c49c-220d-4544-8a7e-704fd8a8d9fc"; } 
                            }  
                            ref :>> ownedDeploymentLinks =  ('3610c49c-220d-4544-8a7e-704fd8a8d9fc'); 
                        }  
                        part 'c7a1fe8e-f1c5-47ec-8d4c-4e20c127530e' : CPart :> 'Right Reservior'  { 
                            @CapellaID { eid = "c7a1fe8e-f1c5-47ec-8d4c-4e20c127530e"; } 
                            attribute :>> aggregationKind = AggregationKind::UNSET; 
                            attribute :>> isFinal = false; 
                            attribute :>> isAbstract = false; 
                            attribute :>> isDerived = false; 
                            attribute :>> isPartOfKey = false; 
                            attribute :>> isReadOnly = false; 
                            attribute :>> isStatic = false; 
                            attribute :>> isMaxInclusive = false; 
                            attribute :>> isMinInclusive = false; 
                            attribute :>> isOrdered = false; 
                            attribute :>> isUnique = false; 
                            allocation '7e1d9cda-e086-46d1-8adc-ac26a7e23f64' : PartDeploymentLink
                                allocate deployedElement ::> 'Control Subsystem'.'242b5cbb-7a11-4699-8070-15f665597a22'
                                to location ::> 'Bike BrakeSystem Library Library'::'Bike BrakeSystem Library'::'Physical Architecture'::'Structure'::'Physical System'.'Right Hydraulic Brake Assembly'.'c7a1fe8e-f1c5-47ec-8d4c-4e20c127530e' { 
                                @CapellaID { eid = "7e1d9cda-e086-46d1-8adc-ac26a7e23f64"; } 
                            }  
                            ref :>> ownedDeploymentLinks =  ('7e1d9cda-e086-46d1-8adc-ac26a7e23f64'); 
                        }  
                        port 'Cockpit Handle Bars' : PhysicalPort { 
                            @CapellaID { eid = "de4b7868-abdb-4bb3-93d2-1993207ba8fe"; } 
                            attribute :>> aggregationKind = AggregationKind::UNSET; 
                            attribute :>> isFinal = false; 
                            attribute :>> isAbstract = false; 
                            attribute :>> isDerived = false; 
                            attribute :>> isPartOfKey = false; 
                            attribute :>> isReadOnly = false; 
                            attribute :>> isStatic = false; 
                            attribute :>> isMaxInclusive = false; 
                            attribute :>> isMinInclusive = false; 
                            attribute :>> isOrdered = false; 
                            attribute :>> isUnique = false; 
                            ref allocation 'd86046a1-da66-449b-8658-289349b3b59f' : ComponentPortAllocation
                                allocate allocatedPort ::> 'Cockpit Handle Bars'
                                to allocatingPort ::> 'Bike BrakeSystem Library Library'::'Bike BrakeSystem Library'::'Physical Architecture'::'Structure'::'Physical System'.'Control Subsystem'.'Support Right'.'CP 1' { 
                                @CapellaID { eid = "d86046a1-da66-449b-8658-289349b3b59f"; } 
                            }  
                            ref :>> ownedComponentPortAllocations =  ('d86046a1-da66-449b-8658-289349b3b59f'); 
                        }  
                        part 'Right Piston' : PhysicalComponent { 
                            @CapellaID { eid = "b94e6045-d54f-4e69-9c46-c7d8a8ca9f31"; } 
                            attribute :>> isAbstract = false; 
                            attribute :>> isActor = false; 
                            attribute :>> isHuman = false; 
                            attribute :>> kind = PhysicalComponentKind::UNSET; 
                            attribute :>> nature = PhysicalComponentNature::NODE; 
                            attribute 'Mass' : PropertyValueGroup { 
                                @CapellaID { eid = "03c9fe91-4e81-456d-878b-d3c73419f65a"; } 
                                attribute 'Units' : StringPropertyValue  = "g" { 
                                    @CapellaID { eid = "b5c6136d-39a2-41d4-a730-8443c9759ec4"; } 
                                }  
                                attribute 'Max Value' : FloatPropertyValue  = 6.0 { 
                                    @CapellaID { eid = "6643bba0-b60d-4cd1-9e9e-cf4d0276f7ab"; } 
                                }  
                                ref :>> ownedPropertyValues =  ('Units',
                                'Max Value'); 
                            }  
                            port 'PP 1_3' : PhysicalPort { 
                                @CapellaID { eid = "953ea60e-c511-4312-8fb7-60a585cc01c4"; } 
                                attribute :>> aggregationKind = AggregationKind::UNSET; 
                                attribute :>> isFinal = false; 
                                attribute :>> isAbstract = false; 
                                attribute :>> isDerived = false; 
                                attribute :>> isPartOfKey = false; 
                                attribute :>> isReadOnly = false; 
                                attribute :>> isStatic = false; 
                                attribute :>> isMaxInclusive = false; 
                                attribute :>> isMinInclusive = false; 
                                attribute :>> isOrdered = false; 
                                attribute :>> isUnique = false; 
                                ref allocation 'bc41fd03-7253-4a66-99a5-318698f3fede' : ComponentPortAllocation
                                    allocate allocatedPort ::> 'PP 1_3'
                                    to allocatingPort ::> 'Bike BrakeSystem Library Library'::'Bike BrakeSystem Library'::'Physical Architecture'::'Structure'::'Physical System'.'Control Subsystem'.'Right Piston'.'CP 1' { 
                                    @CapellaID { eid = "bc41fd03-7253-4a66-99a5-318698f3fede"; } 
                                }  
                                ref :>> ownedComponentPortAllocations =  ('bc41fd03-7253-4a66-99a5-318698f3fede'); 
                            }  
                            port 'PP 2_3' : PhysicalPort { 
                                @CapellaID { eid = "372985c2-4e70-4d82-8165-fdc6966db447"; } 
                                attribute :>> aggregationKind = AggregationKind::UNSET; 
                                attribute :>> isFinal = false; 
                                attribute :>> isAbstract = false; 
                                attribute :>> isDerived = false; 
                                attribute :>> isPartOfKey = false; 
                                attribute :>> isReadOnly = false; 
                                attribute :>> isStatic = false; 
                                attribute :>> isMaxInclusive = false; 
                                attribute :>> isMinInclusive = false; 
                                attribute :>> isOrdered = false; 
                                attribute :>> isUnique = false; 
                            }  
                            port 'PP 3_3' : PhysicalPort { 
                                @CapellaID { eid = "c2394e0a-6aee-4663-8717-9d42c7920659"; } 
                                attribute :>> aggregationKind = AggregationKind::UNSET; 
                                attribute :>> isFinal = false; 
                                attribute :>> isAbstract = false; 
                                attribute :>> isDerived = false; 
                                attribute :>> isPartOfKey = false; 
                                attribute :>> isReadOnly = false; 
                                attribute :>> isStatic = false; 
                                attribute :>> isMaxInclusive = false; 
                                attribute :>> isMinInclusive = false; 
                                attribute :>> isOrdered = false; 
                                attribute :>> isUnique = false; 
                                ref allocation 'bbf2936f-7cb5-4a68-ba95-5eab8f13f142' : ComponentPortAllocation
                                    allocate allocatedPort ::> 'PP 3_3'
                                    to allocatingPort ::> 'Bike BrakeSystem Library Library'::'Bike BrakeSystem Library'::'Physical Architecture'::'Structure'::'Physical System'.'Control Subsystem'.'Right Piston'.'CP 3' { 
                                    @CapellaID { eid = "bbf2936f-7cb5-4a68-ba95-5eab8f13f142"; } 
                                }  
                                ref :>> ownedComponentPortAllocations =  ('bbf2936f-7cb5-4a68-ba95-5eab8f13f142'); 
                            }  
                            ref :>> ownedPropertyValueGroups =  ('Mass'); 
                            ref :>> appliedPropertyValueGroups =  ('Mass'); 
                        }  
                        part 'Right Reservior' : PhysicalComponent { 
                            @CapellaID { eid = "941cdc0a-7d4d-4c02-953c-6b30a03be0a6"; } 
                            attribute :>> isAbstract = false; 
                            attribute :>> isActor = false; 
                            attribute :>> isHuman = false; 
                            attribute :>> kind = PhysicalComponentKind::UNSET; 
                            attribute :>> nature = PhysicalComponentNature::NODE; 
                            attribute 'Mass' : PropertyValueGroup { 
                                @CapellaID { eid = "a50273ee-c0d3-4c54-9049-5aee255a435c"; } 
                                attribute 'Units' : StringPropertyValue  = "g" { 
                                    @CapellaID { eid = "ebb8d6cb-6ed8-4947-8276-d498bce58ddb"; } 
                                }  
                                attribute 'Max Value' : FloatPropertyValue  = 7.0 { 
                                    @CapellaID { eid = "a92cc9f3-5195-437f-bd7e-9109bb30cf52"; } 
                                }  
                                ref :>> ownedPropertyValues =  ('Units',
                                'Max Value'); 
                            }  
                            port 'PP 1_3' : PhysicalPort { 
                                @CapellaID { eid = "4164a344-9bb2-4944-8f3d-aca81d1a02fe"; } 
                                attribute :>> aggregationKind = AggregationKind::UNSET; 
                                attribute :>> isFinal = false; 
                                attribute :>> isAbstract = false; 
                                attribute :>> isDerived = false; 
                                attribute :>> isPartOfKey = false; 
                                attribute :>> isReadOnly = false; 
                                attribute :>> isStatic = false; 
                                attribute :>> isMaxInclusive = false; 
                                attribute :>> isMinInclusive = false; 
                                attribute :>> isOrdered = false; 
                                attribute :>> isUnique = false; 
                            }  
                            port 'Rider' : PhysicalPort { 
                                @CapellaID { eid = "fb225139-bae5-474a-bb5c-fef4b99803c8"; } 
                                attribute :>> aggregationKind = AggregationKind::UNSET; 
                                attribute :>> isFinal = false; 
                                attribute :>> isAbstract = false; 
                                attribute :>> isDerived = false; 
                                attribute :>> isPartOfKey = false; 
                                attribute :>> isReadOnly = false; 
                                attribute :>> isStatic = false; 
                                attribute :>> isMaxInclusive = false; 
                                attribute :>> isMinInclusive = false; 
                                attribute :>> isOrdered = false; 
                                attribute :>> isUnique = false; 
                                ref allocation '661af822-de43-4771-9247-511f5df50bda' : ComponentPortAllocation
                                    allocate allocatedPort ::> 'Rider'
                                    to allocatingPort ::> 'Bike BrakeSystem Library Library'::'Bike BrakeSystem Library'::'Physical Architecture'::'Structure'::'Physical System'.'Control Subsystem'.'Right Resovior'.'CP 2' { 
                                    @CapellaID { eid = "661af822-de43-4771-9247-511f5df50bda"; } 
                                }  
                                ref :>> ownedComponentPortAllocations =  ('661af822-de43-4771-9247-511f5df50bda'); 
                            }  
                            ref :>> ownedPropertyValueGroups =  ('Mass'); 
                            ref :>> appliedPropertyValueGroups =  ('Mass'); 
                        }  
                        ref :>> ownedPhysicalComponents =  ('Right Piston',
                        'Right Reservior'); 
                    }  
                    part 'Front Hydraulic Lines' : PhysicalComponent { 
                        @CapellaID { eid = "25c4a8f3-59c7-4240-b614-9fa01c3dcdd7"; } 
                        attribute :>> isAbstract = false; 
                        attribute :>> isActor = false; 
                        attribute :>> isHuman = false; 
                        attribute :>> kind = PhysicalComponentKind::UNSET; 
                        attribute :>> nature = PhysicalComponentNature::NODE; 
                        attribute 'Mass' : PropertyValueGroup { 
                            @CapellaID { eid = "58433acc-108f-4398-af8c-2ed6cf8383bc"; } 
                            attribute 'Units' : StringPropertyValue  = "g" { 
                                @CapellaID { eid = "5a82edce-b262-45ef-bf76-5594ffb5ea0c"; } 
                            }  
                            attribute 'Max Value' : FloatPropertyValue  = 8.0 { 
                                @CapellaID { eid = "48a98d43-e85e-4d02-a7cb-c5e5d542410b"; } 
                            }  
                            ref :>> ownedPropertyValues =  ('Units',
                            'Max Value'); 
                        }  
                        port 'PP 1_1' : PhysicalPort { 
                            @CapellaID { eid = "402c514d-e3c1-427b-a0b1-92f2c15e27a2"; } 
                            attribute :>> aggregationKind = AggregationKind::UNSET; 
                            attribute :>> isFinal = false; 
                            attribute :>> isAbstract = false; 
                            attribute :>> isDerived = false; 
                            attribute :>> isPartOfKey = false; 
                            attribute :>> isReadOnly = false; 
                            attribute :>> isStatic = false; 
                            attribute :>> isMaxInclusive = false; 
                            attribute :>> isMinInclusive = false; 
                            attribute :>> isOrdered = false; 
                            attribute :>> isUnique = false; 
                            ref allocation 'a3f254c9-12e6-45b6-a062-4a2478a359d9' : ComponentPortAllocation
                                allocate allocatedPort ::> 'PP 1_1'
                                to allocatingPort ::> 'Bike BrakeSystem Library Library'::'Bike BrakeSystem Library'::'Physical Architecture'::'Structure'::'Physical System'.'Force Transmission Subsystem'.'Front Hydraulic Line'.'CP 1' { 
                                @CapellaID { eid = "a3f254c9-12e6-45b6-a062-4a2478a359d9"; } 
                            }  
                            ref :>> ownedComponentPortAllocations =  ('a3f254c9-12e6-45b6-a062-4a2478a359d9'); 
                        }  
                        port 'PP 2' : PhysicalPort { 
                            @CapellaID { eid = "8bea704d-8259-47ce-a2de-7c18af576183"; } 
                            attribute :>> aggregationKind = AggregationKind::UNSET; 
                            attribute :>> isFinal = false; 
                            attribute :>> isAbstract = false; 
                            attribute :>> isDerived = false; 
                            attribute :>> isPartOfKey = false; 
                            attribute :>> isReadOnly = false; 
                            attribute :>> isStatic = false; 
                            attribute :>> isMaxInclusive = false; 
                            attribute :>> isMinInclusive = false; 
                            attribute :>> isOrdered = false; 
                            attribute :>> isUnique = false; 
                            ref allocation '09b8bfec-7c46-47bd-9711-15a12bdd9fc1' : ComponentPortAllocation
                                allocate allocatedPort ::> 'PP 2'
                                to allocatingPort ::> 'Bike BrakeSystem Library Library'::'Bike BrakeSystem Library'::'Physical Architecture'::'Structure'::'Physical System'.'Force Transmission Subsystem'.'Front Hydraulic Line'.'CP 2' { 
                                @CapellaID { eid = "09b8bfec-7c46-47bd-9711-15a12bdd9fc1"; } 
                            }  
                            ref :>> ownedComponentPortAllocations =  ('09b8bfec-7c46-47bd-9711-15a12bdd9fc1'); 
                        }  
                        ref :>> ownedPropertyValueGroups =  ('Mass'); 
                        ref :>> appliedPropertyValueGroups =  ('Mass'); 
                    }  
                    part 'Rear Hydraulic Lines' : PhysicalComponent { 
                        @CapellaID { eid = "40f28a74-8e53-4b25-bf6f-f472ebaa91cf"; } 
                        attribute :>> isAbstract = false; 
                        attribute :>> isActor = false; 
                        attribute :>> isHuman = false; 
                        attribute :>> kind = PhysicalComponentKind::UNSET; 
                        attribute :>> nature = PhysicalComponentNature::NODE; 
                        attribute 'Mass' : PropertyValueGroup { 
                            @CapellaID { eid = "21cd033f-340f-4f22-8fde-06c01fa84443"; } 
                            attribute 'Units' : StringPropertyValue  = "g" { 
                                @CapellaID { eid = "ae2349d9-dfb7-4b29-8a95-c52f350e740b"; } 
                            }  
                            attribute 'Max Value' : FloatPropertyValue  = 9.0 { 
                                @CapellaID { eid = "da20fdd4-57e8-48b4-8d4c-b8830bf2c32c"; } 
                            }  
                            ref :>> ownedPropertyValues =  ('Units',
                            'Max Value'); 
                        }  
                        port 'PP 1' : PhysicalPort { 
                            @CapellaID { eid = "7369cb59-d224-4b86-ad95-c451ffa68a6d"; } 
                            attribute :>> aggregationKind = AggregationKind::UNSET; 
                            attribute :>> isFinal = false; 
                            attribute :>> isAbstract = false; 
                            attribute :>> isDerived = false; 
                            attribute :>> isPartOfKey = false; 
                            attribute :>> isReadOnly = false; 
                            attribute :>> isStatic = false; 
                            attribute :>> isMaxInclusive = false; 
                            attribute :>> isMinInclusive = false; 
                            attribute :>> isOrdered = false; 
                            attribute :>> isUnique = false; 
                            ref allocation 'aef6aca7-9cc4-443e-b8f4-3f5193f2a838' : ComponentPortAllocation
                                allocate allocatedPort ::> 'PP 1'
                                to allocatingPort ::> 'Bike BrakeSystem Library Library'::'Bike BrakeSystem Library'::'Physical Architecture'::'Structure'::'Physical System'.'Force Transmission Subsystem'.'Rear Hydraulic Line'.'CP 1' { 
                                @CapellaID { eid = "aef6aca7-9cc4-443e-b8f4-3f5193f2a838"; } 
                            }  
                            ref :>> ownedComponentPortAllocations =  ('aef6aca7-9cc4-443e-b8f4-3f5193f2a838'); 
                        }  
                        port 'PP 2' : PhysicalPort { 
                            @CapellaID { eid = "3948ffbf-e390-481d-b17e-075d8dad3581"; } 
                            attribute :>> aggregationKind = AggregationKind::UNSET; 
                            attribute :>> isFinal = false; 
                            attribute :>> isAbstract = false; 
                            attribute :>> isDerived = false; 
                            attribute :>> isPartOfKey = false; 
                            attribute :>> isReadOnly = false; 
                            attribute :>> isStatic = false; 
                            attribute :>> isMaxInclusive = false; 
                            attribute :>> isMinInclusive = false; 
                            attribute :>> isOrdered = false; 
                            attribute :>> isUnique = false; 
                            ref allocation '8a0cb76e-25a9-4e54-b567-17b912013a8d' : ComponentPortAllocation
                                allocate allocatedPort ::> 'PP 2'
                                to allocatingPort ::> 'Bike BrakeSystem Library Library'::'Bike BrakeSystem Library'::'Physical Architecture'::'Structure'::'Physical System'.'Force Transmission Subsystem'.'Rear Hydraulic Line'.'CP 2' { 
                                @CapellaID { eid = "8a0cb76e-25a9-4e54-b567-17b912013a8d"; } 
                            }  
                            ref :>> ownedComponentPortAllocations =  ('8a0cb76e-25a9-4e54-b567-17b912013a8d'); 
                        }  
                        ref :>> ownedPropertyValueGroups =  ('Mass'); 
                        ref :>> appliedPropertyValueGroups =  ('Mass'); 
                    }  
                    ref :>> ownedComponentExchanges =  ('becabdda-c646-47e7-9e65-c81df195f582',
                    'e5a1bb48-0dac-4afa-a92d-33b302c5b2d0',
                    '55ea3dfc-8479-4b79-95e7-e8077d832d66',
                    'd395d391-0252-4ab4-b55f-1811b84e1838'); 
                    ref :>> ownedPhysicalLinks =  ('46e24a0c-d8ee-487e-8160-024d69668341',
                    '2ea369a6-abfe-4565-a541-b66ac4055fe8',
                    '22862d0c-7acc-4444-991d-cd16b9d1554b',
                    '77c25458-2349-4285-85f4-d43c7b50420c',
                    '9fb2ff20-b0d7-4cb7-9c38-9571d44b3f0a',
                    '2e844365-ef34-4155-8be4-e294a67c1896',
                    'c7e44972-58b9-4a63-be10-26fcbb2a9760',
                    'c33f4568-54fd-4810-9c48-00ee368176f8',
                    'fd0a665a-de26-4607-80c9-d326c9d1914d',
                    '6f9ed8a9-2622-47ec-ba3d-cfedcb5204d9',
                    '59a289c8-8070-4fda-b5f7-c77a1cce2bdc',
                    '3ca16471-0f55-4d2e-a046-3eca19cf2020',
                    'bf3f3ac7-6155-48f7-bf4f-57eb435fd4ad',
                    'be24a500-cdc4-4c1a-8d94-c4738072e809',
                    'd50c1c7c-0b40-43f0-8c55-6bbedfefefd7',
                    '7165cde6-0e44-4fcb-8e46-57c29ac0ec90',
                    'f0667139-734d-46d9-aa64-cb36d833f3b6',
                    'b744e40f-08f7-4f4e-ab8b-0e493c0ad166',
                    '16d03cb6-314c-4c11-b08d-e20f1c2c85e6',
                    '52dedd33-fb79-4f5a-bd02-4d599c2ea8c2',
                    '8ae8f3f6-d7b3-4864-b163-96e00d76075f',
                    '8dba6d57-f420-4903-9ad2-f50466db0516',
                    '29e3a7bc-117a-43f5-aaad-ab78ef78aaaa',
                    '73384cf1-5f15-4561-a5b0-8cb9cb80495d'); 
                     
                    ref :>> ownedPhysicalComponents =  ('Control Subsystem',
                    'Break Actuation Subsystem ',
                    'Force Transmission Subsystem',
                    'Feedback and Sensing',
                    'Left Brake Lever',
                    'Rear Caliper',
                    'Rear Rotor',
                    'PAD RL',
                    'PAD RR',
                    'Brake Lever',
                    'Rear Caliper',
                    'Electronic Brake Assembly',
                    'Handle Bars',
                    'Left Hydraulic Brake Assembly',
                    'Front Caliper',
                    'Front Rotor',
                    'PAD FL',
                    'PAD FR',
                    'Brake Lever_2',
                    'Hydraulic Brake Assembly_2',
                    'Rear Wheel Assembly',
                    'Front Wheel Assembly',
                    'Right Brake Lever',
                    'Right Hydraulic Brake Assembly',
                    'Front Hydraulic Lines',
                    'Rear Hydraulic Lines'); 
                }  
                part 'Frame and Suspension' : PhysicalComponent { 
                    @CapellaID { eid = "e3bc8186-1eef-4631-8d9e-f967d6962202"; } 
                    attribute :>> isAbstract = false; 
                    attribute :>> isActor = true; 
                    attribute :>> isHuman = false; 
                    attribute :>> kind = PhysicalComponentKind::UNSET; 
                    attribute :>> nature = PhysicalComponentNature::NODE; 
                    allocation 'c98aa9c4-d13c-418c-b559-5d48a6db1265' : ComponentFunctionalAllocation
                        allocate function ::> 'Physical Functions'::'Root Physical Function'.'Support'
                        to component ::> 'Structure'::'Frame and Suspension' { 
                        @CapellaID { eid = "c98aa9c4-d13c-418c-b559-5d48a6db1265"; } 
                    } 
                    perform 'Physical Functions'::'Root Physical Function'.'Support' ; 
                    port 'CP 1' : ComponentPort { 
                        @CapellaID { eid = "8a1a809b-3b0e-4848-b683-7956091f4b1c"; } 
                        attribute :>> aggregationKind = AggregationKind::UNSET; 
                        attribute :>> isFinal = false; 
                        attribute :>> isAbstract = false; 
                        attribute :>> isDerived = false; 
                        attribute :>> isPartOfKey = false; 
                        attribute :>> isReadOnly = false; 
                        attribute :>> isStatic = false; 
                        attribute :>> kind = ComponentPortKind::FLOW; 
                        attribute :>> isMaxInclusive = false; 
                        attribute :>> isMinInclusive = false; 
                        attribute :>> isOrdered = false; 
                        attribute :>> orientation = OrientationPortKind::INOUT; 
                        attribute :>> isUnique = false; 
                         
                    }  
                    port 'PP 3' : PhysicalPort { 
                        @CapellaID { eid = "9d6fd188-affd-45aa-8fc6-438e35f8e031"; } 
                        attribute :>> aggregationKind = AggregationKind::UNSET; 
                        attribute :>> isFinal = false; 
                        attribute :>> isAbstract = false; 
                        attribute :>> isDerived = false; 
                        attribute :>> isPartOfKey = false; 
                        attribute :>> isReadOnly = false; 
                        attribute :>> isStatic = false; 
                        attribute :>> isMaxInclusive = false; 
                        attribute :>> isMinInclusive = false; 
                        attribute :>> isOrdered = false; 
                        attribute :>> isUnique = false; 
                        ref allocation '9e706cdc-4d38-498e-afda-027bcda77ee2' : ComponentPortAllocation
                            allocate allocatedPort ::> 'PP 3'
                            to allocatingPort ::> 'Bike BrakeSystem Library Library'::'Bike BrakeSystem Library'::'Physical Architecture'::'Structure'::'Frame and Suspension'.'CP 7' { 
                            @CapellaID { eid = "9e706cdc-4d38-498e-afda-027bcda77ee2"; } 
                        }  
                        ref :>> ownedComponentPortAllocations =  ('9e706cdc-4d38-498e-afda-027bcda77ee2'); 
                    }  
                    port 'PP 4' : PhysicalPort { 
                        @CapellaID { eid = "d20829fc-bb6b-48ef-9ff7-35290d095bed"; } 
                        attribute :>> aggregationKind = AggregationKind::UNSET; 
                        attribute :>> isFinal = false; 
                        attribute :>> isAbstract = false; 
                        attribute :>> isDerived = false; 
                        attribute :>> isPartOfKey = false; 
                        attribute :>> isReadOnly = false; 
                        attribute :>> isStatic = false; 
                        attribute :>> isMaxInclusive = false; 
                        attribute :>> isMinInclusive = false; 
                        attribute :>> isOrdered = false; 
                        attribute :>> isUnique = false; 
                        ref allocation 'f7b954d8-13c6-46c5-847d-3d0f28c79435' : ComponentPortAllocation
                            allocate allocatedPort ::> 'PP 4'
                            to allocatingPort ::> 'Bike BrakeSystem Library Library'::'Bike BrakeSystem Library'::'Physical Architecture'::'Structure'::'Frame and Suspension'.'CP 8' { 
                            @CapellaID { eid = "f7b954d8-13c6-46c5-847d-3d0f28c79435"; } 
                        }  
                        ref :>> ownedComponentPortAllocations =  ('f7b954d8-13c6-46c5-847d-3d0f28c79435'); 
                    }  
                    port 'PP 1' : PhysicalPort { 
                        @CapellaID { eid = "825e1413-821a-41f1-b9ff-03b96cb49916"; } 
                        attribute :>> aggregationKind = AggregationKind::UNSET; 
                        attribute :>> isFinal = false; 
                        attribute :>> isAbstract = false; 
                        attribute :>> isDerived = false; 
                        attribute :>> isPartOfKey = false; 
                        attribute :>> isReadOnly = false; 
                        attribute :>> isStatic = false; 
                        attribute :>> isMaxInclusive = false; 
                        attribute :>> isMinInclusive = false; 
                        attribute :>> isOrdered = false; 
                        attribute :>> isUnique = false; 
                    }  
                    port 'CP 5' : ComponentPort { 
                        @CapellaID { eid = "337e1dfc-9fc2-4ba3-b32e-6c50c8de1bea"; } 
                        attribute :>> aggregationKind = AggregationKind::UNSET; 
                        attribute :>> isFinal = false; 
                        attribute :>> isAbstract = false; 
                        attribute :>> isDerived = false; 
                        attribute :>> isPartOfKey = false; 
                        attribute :>> isReadOnly = false; 
                        attribute :>> isStatic = false; 
                        attribute :>> kind = ComponentPortKind::FLOW; 
                        attribute :>> isMaxInclusive = false; 
                        attribute :>> isMinInclusive = false; 
                        attribute :>> isOrdered = false; 
                        attribute :>> orientation = OrientationPortKind::OUT; 
                        attribute :>> isUnique = false; 
                        ref allocation '8d1eb8d4-b813-499a-981d-85f0b008d00b' : PortAllocation
                            allocate allocatedPort ::> 'Physical Functions'::'Root Physical Function'.'Support'.'FOP 1'
                            to allocatingPort ::> 'CP 5'; 
                        ref :>> ownedPortAllocations =  ('8d1eb8d4-b813-499a-981d-85f0b008d00b'); 
                    }  
                    port 'CP 6' : ComponentPort { 
                        @CapellaID { eid = "d37f4e10-2082-46e2-8e66-c0e9eedb7c80"; } 
                        attribute :>> aggregationKind = AggregationKind::UNSET; 
                        attribute :>> isFinal = false; 
                        attribute :>> isAbstract = false; 
                        attribute :>> isDerived = false; 
                        attribute :>> isPartOfKey = false; 
                        attribute :>> isReadOnly = false; 
                        attribute :>> isStatic = false; 
                        attribute :>> kind = ComponentPortKind::FLOW; 
                        attribute :>> isMaxInclusive = false; 
                        attribute :>> isMinInclusive = false; 
                        attribute :>> isOrdered = false; 
                        attribute :>> orientation = OrientationPortKind::OUT; 
                        attribute :>> isUnique = false; 
                        ref allocation '98f47b4e-750c-4842-95cb-29b49307abc0' : PortAllocation
                            allocate allocatedPort ::> 'Physical Functions'::'Root Physical Function'.'Support'.'FOP 1'
                            to allocatingPort ::> 'CP 6'; 
                        ref :>> ownedPortAllocations =  ('98f47b4e-750c-4842-95cb-29b49307abc0'); 
                    }  
                    port 'CP 7' : ComponentPort { 
                        @CapellaID { eid = "03778d47-1870-4aaf-a03e-8aa84b88ffa4"; } 
                        attribute :>> aggregationKind = AggregationKind::UNSET; 
                        attribute :>> isFinal = false; 
                        attribute :>> isAbstract = false; 
                        attribute :>> isDerived = false; 
                        attribute :>> isPartOfKey = false; 
                        attribute :>> isReadOnly = false; 
                        attribute :>> isStatic = false; 
                        attribute :>> kind = ComponentPortKind::FLOW; 
                        attribute :>> isMaxInclusive = false; 
                        attribute :>> isMinInclusive = false; 
                        attribute :>> isOrdered = false; 
                        attribute :>> orientation = OrientationPortKind::OUT; 
                        attribute :>> isUnique = false; 
                        ref allocation '6ce07831-9002-456b-b122-19225845c36d' : PortAllocation
                            allocate allocatedPort ::> 'Physical Functions'::'Root Physical Function'.'Support'.'FOP 1'
                            to allocatingPort ::> 'CP 7'; 
                        ref :>> ownedPortAllocations =  ('6ce07831-9002-456b-b122-19225845c36d'); 
                    }  
                    port 'CP 8' : ComponentPort { 
                        @CapellaID { eid = "ff044a08-7031-423c-833e-9e8f463fa5f0"; } 
                        attribute :>> aggregationKind = AggregationKind::UNSET; 
                        attribute :>> isFinal = false; 
                        attribute :>> isAbstract = false; 
                        attribute :>> isDerived = false; 
                        attribute :>> isPartOfKey = false; 
                        attribute :>> isReadOnly = false; 
                        attribute :>> isStatic = false; 
                        attribute :>> kind = ComponentPortKind::FLOW; 
                        attribute :>> isMaxInclusive = false; 
                        attribute :>> isMinInclusive = false; 
                        attribute :>> isOrdered = false; 
                        attribute :>> orientation = OrientationPortKind::OUT; 
                        attribute :>> isUnique = false; 
                    }  
                    ref :>> ownedFunctionalAllocation =  ('c98aa9c4-d13c-418c-b559-5d48a6db1265'); 
                     
                }  
                part 'Wheels and Tires' : PhysicalComponent { 
                    @CapellaID { eid = "7500e209-3fa8-4375-8aac-8b8d8b5430d1"; } 
                    attribute :>> isAbstract = false; 
                    attribute :>> isActor = true; 
                    attribute :>> isHuman = false; 
                    attribute :>> kind = PhysicalComponentKind::UNSET; 
                    attribute :>> nature = PhysicalComponentNature::NODE; 
                    allocation 'a0950c77-20d7-419a-bb10-0d0883839935' : ComponentFunctionalAllocation
                        allocate function ::> 'Physical Functions'::'Root Physical Function'.'Transfer Propulson and Stopping Force'
                        to component ::> 'Structure'::'Wheels and Tires' { 
                        @CapellaID { eid = "a0950c77-20d7-419a-bb10-0d0883839935"; } 
                    } 
                    perform 'Physical Functions'::'Root Physical Function'.'Transfer Propulson and Stopping Force' ; 
                    allocation '9490c4c8-214c-403c-b7d2-4ad80bde4cf2' : ComponentFunctionalAllocation
                        allocate function ::> 'Physical Functions'::'Root Physical Function'.'Provide Stopping'.'Gather 17'
                        to component ::> 'Structure'::'Wheels and Tires' { 
                        @CapellaID { eid = "9490c4c8-214c-403c-b7d2-4ad80bde4cf2"; } 
                    } 
                    perform 'Physical Functions'::'Root Physical Function'.'Provide Stopping'.'Gather 17' ; 
                    port 'CP 1' : ComponentPort { 
                        @CapellaID { eid = "6637a786-ce27-4920-a54a-3a55a2a91ab5"; } 
                        attribute :>> aggregationKind = AggregationKind::UNSET; 
                        attribute :>> isFinal = false; 
                        attribute :>> isAbstract = false; 
                        attribute :>> isDerived = false; 
                        attribute :>> isPartOfKey = false; 
                        attribute :>> isReadOnly = false; 
                        attribute :>> isStatic = false; 
                        attribute :>> kind = ComponentPortKind::FLOW; 
                        attribute :>> isMaxInclusive = false; 
                        attribute :>> isMinInclusive = false; 
                        attribute :>> isOrdered = false; 
                        attribute :>> orientation = OrientationPortKind::INOUT; 
                        attribute :>> isUnique = false; 
                        ref allocation 'ce0eb293-6269-472c-b902-e85543dd57aa' : PortAllocation
                            allocate allocatedPort ::> 'Physical Functions'::'Root Physical Function'.'Provide Stopping'.'Gather 17'.'FIP 1'
                            to allocatingPort ::> 'CP 1'; 
                        ref allocation '2289b3a9-1944-435d-ad4c-61d5eca5717a' : PortAllocation
                            allocate allocatedPort ::> 'Physical Functions'::'Root Physical Function'.'Provide Stopping'.'Gather 17'.'FIP 3'
                            to allocatingPort ::> 'CP 1'; 
                         
                        ref :>> ownedPortAllocations =  ('ce0eb293-6269-472c-b902-e85543dd57aa',
                        '2289b3a9-1944-435d-ad4c-61d5eca5717a'); 
                    }  
                    port 'PP 4' : PhysicalPort { 
                        @CapellaID { eid = "281db34d-8709-4713-ad79-d715fea94ce3"; } 
                        attribute :>> aggregationKind = AggregationKind::UNSET; 
                        attribute :>> isFinal = false; 
                        attribute :>> isAbstract = false; 
                        attribute :>> isDerived = false; 
                        attribute :>> isPartOfKey = false; 
                        attribute :>> isReadOnly = false; 
                        attribute :>> isStatic = false; 
                        attribute :>> isMaxInclusive = false; 
                        attribute :>> isMinInclusive = false; 
                        attribute :>> isOrdered = false; 
                        attribute :>> isUnique = false; 
                        ref allocation 'efe14195-b16f-4de6-a0f5-f4006da0a47b' : ComponentPortAllocation
                            allocate allocatedPort ::> 'PP 4'
                            to allocatingPort ::> 'Bike BrakeSystem Library Library'::'Bike BrakeSystem Library'::'Physical Architecture'::'Structure'::'Wheels and Tires'.'CP 1' { 
                            @CapellaID { eid = "efe14195-b16f-4de6-a0f5-f4006da0a47b"; } 
                        }  
                        ref :>> ownedComponentPortAllocations =  ('efe14195-b16f-4de6-a0f5-f4006da0a47b'); 
                    }  
                    port 'Wheel' : PhysicalPort { 
                        @CapellaID { eid = "e2b490a6-d15b-4416-9500-d7de955676dc"; } 
                        attribute :>> aggregationKind = AggregationKind::UNSET; 
                        attribute :>> isFinal = false; 
                        attribute :>> isAbstract = false; 
                        attribute :>> isDerived = false; 
                        attribute :>> isPartOfKey = false; 
                        attribute :>> isReadOnly = false; 
                        attribute :>> isStatic = false; 
                        attribute :>> isMaxInclusive = false; 
                        attribute :>> isMinInclusive = false; 
                        attribute :>> isOrdered = false; 
                        attribute :>> isUnique = false; 
                        ref allocation '1832fbb3-fb31-44a1-a9b9-20cbad857f57' : ComponentPortAllocation
                            allocate allocatedPort ::> 'Wheel'
                            to allocatingPort ::> 'Bike BrakeSystem Library Library'::'Bike BrakeSystem Library'::'Physical Architecture'::'Structure'::'Wheels and Tires'.'CP 1' { 
                            @CapellaID { eid = "1832fbb3-fb31-44a1-a9b9-20cbad857f57"; } 
                        }  
                        ref :>> ownedComponentPortAllocations =  ('1832fbb3-fb31-44a1-a9b9-20cbad857f57'); 
                    }  
                    dependency 'a99d144e-5ab1-497d-b133-65e724382e5d'
                        from 'a0950c77-20d7-419a-bb10-0d0883839935'
                        to  'Logical Architecture'::'Structure'::'Wheels and Tires'::'1771b82a-b7d7-4953-8501-1b7279df9c0f' { 
                        @TransfoLink { 
                            @CapellaID { eid = "a99d144e-5ab1-497d-b133-65e724382e5d"; } 
                        }  
                    }  
                    ref :>> ownedFunctionalAllocation =  ('a0950c77-20d7-419a-bb10-0d0883839935',
                    '9490c4c8-214c-403c-b7d2-4ad80bde4cf2'); 
                     
                }  
                part 'Cockpit' : PhysicalComponent { 
                    @CapellaID { eid = "5f89aae6-3ec1-4f28-9c2d-3101342c5f7a"; } 
                    attribute :>> isAbstract = false; 
                    attribute :>> isActor = true; 
                    attribute :>> isHuman = false; 
                    attribute :>> kind = PhysicalComponentKind::UNSET; 
                    attribute :>> nature = PhysicalComponentNature::NODE; 
                    allocation 'ed6a16e8-3675-42dc-aabb-8f3b35ae8cb4' : ComponentFunctionalAllocation
                        allocate function ::> 'Physical Functions'::'Root Physical Function'.'Support'
                        to component ::> 'Structure'::'Cockpit' { 
                        @CapellaID { eid = "ed6a16e8-3675-42dc-aabb-8f3b35ae8cb4"; } 
                    } 
                    perform 'Physical Functions'::'Root Physical Function'.'Support' ; 
                    port 'CP 1' : ComponentPort { 
                        @CapellaID { eid = "902a70a7-7646-42ce-aca3-1b391359bba2"; } 
                        attribute :>> aggregationKind = AggregationKind::UNSET; 
                        attribute :>> isFinal = false; 
                        attribute :>> isAbstract = false; 
                        attribute :>> isDerived = false; 
                        attribute :>> isPartOfKey = false; 
                        attribute :>> isReadOnly = false; 
                        attribute :>> isStatic = false; 
                        attribute :>> kind = ComponentPortKind::FLOW; 
                        attribute :>> isMaxInclusive = false; 
                        attribute :>> isMinInclusive = false; 
                        attribute :>> isOrdered = false; 
                        attribute :>> orientation = OrientationPortKind::INOUT; 
                        attribute :>> isUnique = false; 
                        ref allocation '0591e6f0-7a50-42c8-a443-e0336daecece' : PortAllocation
                            allocate allocatedPort ::> 'Physical Functions'::'Root Physical Function'.'Support'.'FOP 2'
                            to allocatingPort ::> 'CP 1'; 
                         
                        ref :>> ownedPortAllocations =  ('0591e6f0-7a50-42c8-a443-e0336daecece'); 
                    }  
                    port 'PP 2' : PhysicalPort { 
                        @CapellaID { eid = "5802af3b-8d7c-49e5-b28e-afd0d438a74a"; } 
                        attribute :>> aggregationKind = AggregationKind::UNSET; 
                        attribute :>> isFinal = false; 
                        attribute :>> isAbstract = false; 
                        attribute :>> isDerived = false; 
                        attribute :>> isPartOfKey = false; 
                        attribute :>> isReadOnly = false; 
                        attribute :>> isStatic = false; 
                        attribute :>> isMaxInclusive = false; 
                        attribute :>> isMinInclusive = false; 
                        attribute :>> isOrdered = false; 
                        attribute :>> isUnique = false; 
                        ref allocation '15799290-2075-436d-b1a9-087a1bc8aa7e' : ComponentPortAllocation
                            allocate allocatedPort ::> 'PP 2'
                            to allocatingPort ::> 'Bike BrakeSystem Library Library'::'Bike BrakeSystem Library'::'Physical Architecture'::'Structure'::'Cockpit'.'CP 4' { 
                            @CapellaID { eid = "15799290-2075-436d-b1a9-087a1bc8aa7e"; } 
                        }  
                        ref :>> ownedComponentPortAllocations =  ('15799290-2075-436d-b1a9-087a1bc8aa7e'); 
                    }  
                    port 'PP 3' : PhysicalPort { 
                        @CapellaID { eid = "9d3e66b0-e60b-44c2-8f4c-85048b878841"; } 
                        attribute :>> aggregationKind = AggregationKind::UNSET; 
                        attribute :>> isFinal = false; 
                        attribute :>> isAbstract = false; 
                        attribute :>> isDerived = false; 
                        attribute :>> isPartOfKey = false; 
                        attribute :>> isReadOnly = false; 
                        attribute :>> isStatic = false; 
                        attribute :>> isMaxInclusive = false; 
                        attribute :>> isMinInclusive = false; 
                        attribute :>> isOrdered = false; 
                        attribute :>> isUnique = false; 
                        ref allocation '8290d0b1-4251-4f47-85e4-5d0c897c3688' : ComponentPortAllocation
                            allocate allocatedPort ::> 'PP 3'
                            to allocatingPort ::> 'Bike BrakeSystem Library Library'::'Bike BrakeSystem Library'::'Physical Architecture'::'Structure'::'Cockpit'.'CP 5' { 
                            @CapellaID { eid = "8290d0b1-4251-4f47-85e4-5d0c897c3688"; } 
                        }  
                        ref :>> ownedComponentPortAllocations =  ('8290d0b1-4251-4f47-85e4-5d0c897c3688'); 
                    }  
                    port 'CP 4' : ComponentPort { 
                        @CapellaID { eid = "34ef3f49-f281-4031-b1fe-b75fc4e62563"; } 
                        attribute :>> aggregationKind = AggregationKind::UNSET; 
                        attribute :>> isFinal = false; 
                        attribute :>> isAbstract = false; 
                        attribute :>> isDerived = false; 
                        attribute :>> isPartOfKey = false; 
                        attribute :>> isReadOnly = false; 
                        attribute :>> isStatic = false; 
                        attribute :>> kind = ComponentPortKind::FLOW; 
                        attribute :>> isMaxInclusive = false; 
                        attribute :>> isMinInclusive = false; 
                        attribute :>> isOrdered = false; 
                        attribute :>> orientation = OrientationPortKind::OUT; 
                        attribute :>> isUnique = false; 
                        ref allocation '45c653b7-345d-4ac7-ac67-380205671b57' : PortAllocation
                            allocate allocatedPort ::> 'Physical Functions'::'Root Physical Function'.'Support'.'FOP 2'
                            to allocatingPort ::> 'CP 4'; 
                        ref :>> ownedPortAllocations =  ('45c653b7-345d-4ac7-ac67-380205671b57'); 
                    }  
                    port 'CP 5' : ComponentPort { 
                        @CapellaID { eid = "a9c583e2-e141-4cb9-856a-c052ab50a4e7"; } 
                        attribute :>> aggregationKind = AggregationKind::UNSET; 
                        attribute :>> isFinal = false; 
                        attribute :>> isAbstract = false; 
                        attribute :>> isDerived = false; 
                        attribute :>> isPartOfKey = false; 
                        attribute :>> isReadOnly = false; 
                        attribute :>> isStatic = false; 
                        attribute :>> kind = ComponentPortKind::FLOW; 
                        attribute :>> isMaxInclusive = false; 
                        attribute :>> isMinInclusive = false; 
                        attribute :>> isOrdered = false; 
                        attribute :>> orientation = OrientationPortKind::OUT; 
                        attribute :>> isUnique = false; 
                        ref allocation '8a8e1c8e-0e1d-47b1-9269-ce7f7a866cd5' : PortAllocation
                            allocate allocatedPort ::> 'Physical Functions'::'Root Physical Function'.'Support'.'FOP 2'
                            to allocatingPort ::> 'CP 5'; 
                        ref :>> ownedPortAllocations =  ('8a8e1c8e-0e1d-47b1-9269-ce7f7a866cd5'); 
                    }  
                    dependency '5c035a04-5e6a-41f8-a7cc-7a8bdd1164de'
                        from 'ed6a16e8-3675-42dc-aabb-8f3b35ae8cb4'
                        to  'Logical Architecture'::'Structure'::'Cockpit'::'5ffd10b4-2927-4e94-b5d7-649f3100b3d4' { 
                        @TransfoLink { 
                            @CapellaID { eid = "5c035a04-5e6a-41f8-a7cc-7a8bdd1164de"; } 
                        }  
                    }  
                    ref :>> ownedFunctionalAllocation =  ('ed6a16e8-3675-42dc-aabb-8f3b35ae8cb4'); 
                     
                }  
                part 'Environment' : PhysicalComponent { 
                    @CapellaID { eid = "88ff0dc1-ca24-4795-bfbf-d43d0e1e7d08"; } 
                    attribute :>> isAbstract = false; 
                    attribute :>> isActor = true; 
                    attribute :>> isHuman = false; 
                    attribute :>> kind = PhysicalComponentKind::UNSET; 
                    attribute :>> nature = PhysicalComponentNature::NODE; 
                    allocation '3c05838d-b478-4d44-9c3f-6256f99c317b' : ComponentFunctionalAllocation
                        allocate function ::> 'Physical Functions'::'Root Physical Function'.'Provide environmental contitions'
                        to component ::> 'Structure'::'Environment' { 
                        @CapellaID { eid = "3c05838d-b478-4d44-9c3f-6256f99c317b"; } 
                    } 
                    perform 'Physical Functions'::'Root Physical Function'.'Provide environmental contitions' ; 
                    port 'PP 1' : PhysicalPort { 
                        @CapellaID { eid = "a016a5df-f7a6-4558-8697-b9a7aa8baa8f"; } 
                        attribute :>> aggregationKind = AggregationKind::UNSET; 
                        attribute :>> isFinal = false; 
                        attribute :>> isAbstract = false; 
                        attribute :>> isDerived = false; 
                        attribute :>> isPartOfKey = false; 
                        attribute :>> isReadOnly = false; 
                        attribute :>> isStatic = false; 
                        attribute :>> isMaxInclusive = false; 
                        attribute :>> isMinInclusive = false; 
                        attribute :>> isOrdered = false; 
                        attribute :>> isUnique = false; 
                    }  
                    port 'PP 2' : PhysicalPort { 
                        @CapellaID { eid = "8fea5d91-b7b5-45f3-8ab9-890f435a6e39"; } 
                        attribute :>> aggregationKind = AggregationKind::UNSET; 
                        attribute :>> isFinal = false; 
                        attribute :>> isAbstract = false; 
                        attribute :>> isDerived = false; 
                        attribute :>> isPartOfKey = false; 
                        attribute :>> isReadOnly = false; 
                        attribute :>> isStatic = false; 
                        attribute :>> isMaxInclusive = false; 
                        attribute :>> isMinInclusive = false; 
                        attribute :>> isOrdered = false; 
                        attribute :>> isUnique = false; 
                    }  
                    dependency '99f65b79-4d1b-46bb-be14-04e5d30530d0'
                        from '3c05838d-b478-4d44-9c3f-6256f99c317b'
                        to  'Logical Architecture'::'Structure'::'Environment'::'875b1712-753e-4045-8923-f40c19b6debc' { 
                        @TransfoLink { 
                            @CapellaID { eid = "99f65b79-4d1b-46bb-be14-04e5d30530d0"; } 
                        }  
                    }  
                    ref :>> ownedFunctionalAllocation =  ('3c05838d-b478-4d44-9c3f-6256f99c317b'); 
                     
                }  
                part 'Rider' : PhysicalComponent { 
                    @CapellaID { eid = "8e4239f0-96e6-4bd8-be7c-34459cf88d51"; } 
                    attribute :>> isAbstract = false; 
                    attribute :>> isActor = true; 
                    attribute :>> isHuman = false; 
                    attribute :>> kind = PhysicalComponentKind::UNSET; 
                    attribute :>> nature = PhysicalComponentNature::NODE; 
                    allocation '6c309e09-95ad-4561-a06a-a4c86782dd16' : ComponentFunctionalAllocation
                        allocate function ::> 'Physical Functions'::'Root Physical Function'.'Observe Status'
                        to component ::> 'Structure'::'Rider' { 
                        @CapellaID { eid = "6c309e09-95ad-4561-a06a-a4c86782dd16"; } 
                    } 
                    perform 'Physical Functions'::'Root Physical Function'.'Observe Status' ; 
                    allocation 'ad4d37d4-d87d-4944-ba1b-060210f40285' : ComponentFunctionalAllocation
                        allocate function ::> 'Physical Functions'::'Root Physical Function'.'Monitor Diagnostics'
                        to component ::> 'Structure'::'Rider' { 
                        @CapellaID { eid = "ad4d37d4-d87d-4944-ba1b-060210f40285"; } 
                    } 
                    perform 'Physical Functions'::'Root Physical Function'.'Monitor Diagnostics' ; 
                    allocation '0dcf4a30-9cb6-40e2-a377-54ee983ed397' : ComponentFunctionalAllocation
                        allocate function ::> 'Physical Functions'::'Root Physical Function'.'Maintain Fluid'
                        to component ::> 'Structure'::'Rider' { 
                        @CapellaID { eid = "0dcf4a30-9cb6-40e2-a377-54ee983ed397"; } 
                    } 
                    perform 'Physical Functions'::'Root Physical Function'.'Maintain Fluid' ; 
                    allocation 'd4711af6-cf95-4751-8d61-b7d7a728c3d4' : ComponentFunctionalAllocation
                        allocate function ::> 'Physical Functions'::'Root Physical Function'.'Activate Left Brake'
                        to component ::> 'Structure'::'Rider' { 
                        @CapellaID { eid = "d4711af6-cf95-4751-8d61-b7d7a728c3d4"; } 
                    } 
                    perform 'Physical Functions'::'Root Physical Function'.'Activate Left Brake' ; 
                    allocation 'cf75eb15-46c4-45ed-9add-3a6811d9d1a3' : ComponentFunctionalAllocation
                        allocate function ::> 'Physical Functions'::'Root Physical Function'.'Activate Right Brake'
                        to component ::> 'Structure'::'Rider' { 
                        @CapellaID { eid = "cf75eb15-46c4-45ed-9add-3a6811d9d1a3"; } 
                    } 
                    perform 'Physical Functions'::'Root Physical Function'.'Activate Right Brake' ; 
                    port 'CP 1' : ComponentPort { 
                        @CapellaID { eid = "cc598982-d61a-4214-8c8e-569ef9761437"; } 
                        attribute :>> aggregationKind = AggregationKind::UNSET; 
                        attribute :>> isFinal = false; 
                        attribute :>> isAbstract = false; 
                        attribute :>> isDerived = false; 
                        attribute :>> isPartOfKey = false; 
                        attribute :>> isReadOnly = false; 
                        attribute :>> isStatic = false; 
                        attribute :>> kind = ComponentPortKind::FLOW; 
                        attribute :>> isMaxInclusive = false; 
                        attribute :>> isMinInclusive = false; 
                        attribute :>> isOrdered = false; 
                        attribute :>> orientation = OrientationPortKind::OUT; 
                        attribute :>> isUnique = false; 
                        ref allocation 'd36f3422-c7fd-46e2-a82e-982cdd1c84d4' : PortAllocation
                            allocate allocatedPort ::> 'Physical Functions'::'Root Physical Function'.'Maintain Fluid'.'FOP 2'
                            to allocatingPort ::> 'CP 1'; 
                        ref :>> ownedPortAllocations =  ('d36f3422-c7fd-46e2-a82e-982cdd1c84d4'); 
                    }  
                    port 'PP 2' : PhysicalPort { 
                        @CapellaID { eid = "570135bd-49a5-4fb6-8f68-7acf8ab4be1c"; } 
                        attribute :>> aggregationKind = AggregationKind::UNSET; 
                        attribute :>> isFinal = false; 
                        attribute :>> isAbstract = false; 
                        attribute :>> isDerived = false; 
                        attribute :>> isPartOfKey = false; 
                        attribute :>> isReadOnly = false; 
                        attribute :>> isStatic = false; 
                        attribute :>> isMaxInclusive = false; 
                        attribute :>> isMinInclusive = false; 
                        attribute :>> isOrdered = false; 
                        attribute :>> isUnique = false; 
                        ref allocation '9f076db7-1471-4fca-9ffa-06f10e2abfe2' : ComponentPortAllocation
                            allocate allocatedPort ::> 'PP 2'
                            to allocatingPort ::> 'Bike BrakeSystem Library Library'::'Bike BrakeSystem Library'::'Physical Architecture'::'Structure'::'Rider'.'CP 1' { 
                            @CapellaID { eid = "9f076db7-1471-4fca-9ffa-06f10e2abfe2"; } 
                        }  
                        ref :>> ownedComponentPortAllocations =  ('9f076db7-1471-4fca-9ffa-06f10e2abfe2'); 
                    }  
                    port 'PP 3' : PhysicalPort { 
                        @CapellaID { eid = "bf4b0e04-52d3-423a-95e6-b5b7c9bb3072"; } 
                        attribute :>> aggregationKind = AggregationKind::UNSET; 
                        attribute :>> isFinal = false; 
                        attribute :>> isAbstract = false; 
                        attribute :>> isDerived = false; 
                        attribute :>> isPartOfKey = false; 
                        attribute :>> isReadOnly = false; 
                        attribute :>> isStatic = false; 
                        attribute :>> isMaxInclusive = false; 
                        attribute :>> isMinInclusive = false; 
                        attribute :>> isOrdered = false; 
                        attribute :>> isUnique = false; 
                        ref allocation '56dcf7e3-ff2c-4abc-9422-b243f0bd080d' : ComponentPortAllocation
                            allocate allocatedPort ::> 'PP 3'
                            to allocatingPort ::> 'Bike BrakeSystem Library Library'::'Bike BrakeSystem Library'::'Physical Architecture'::'Structure'::'Rider'.'CP 1' { 
                            @CapellaID { eid = "56dcf7e3-ff2c-4abc-9422-b243f0bd080d"; } 
                        }  
                        ref :>> ownedComponentPortAllocations =  ('56dcf7e3-ff2c-4abc-9422-b243f0bd080d'); 
                    }  
                    port 'PP 4' : PhysicalPort { 
                        @CapellaID { eid = "1aebdb12-65e8-4548-9a2e-12fcb40cc38c"; } 
                        attribute :>> aggregationKind = AggregationKind::UNSET; 
                        attribute :>> isFinal = false; 
                        attribute :>> isAbstract = false; 
                        attribute :>> isDerived = false; 
                        attribute :>> isPartOfKey = false; 
                        attribute :>> isReadOnly = false; 
                        attribute :>> isStatic = false; 
                        attribute :>> isMaxInclusive = false; 
                        attribute :>> isMinInclusive = false; 
                        attribute :>> isOrdered = false; 
                        attribute :>> isUnique = false; 
                    }  
                    port 'PP 5' : PhysicalPort { 
                        @CapellaID { eid = "71b457f0-3434-4639-9da6-930867f81d3a"; } 
                        attribute :>> aggregationKind = AggregationKind::UNSET; 
                        attribute :>> isFinal = false; 
                        attribute :>> isAbstract = false; 
                        attribute :>> isDerived = false; 
                        attribute :>> isPartOfKey = false; 
                        attribute :>> isReadOnly = false; 
                        attribute :>> isStatic = false; 
                        attribute :>> isMaxInclusive = false; 
                        attribute :>> isMinInclusive = false; 
                        attribute :>> isOrdered = false; 
                        attribute :>> isUnique = false; 
                    }  
                    dependency '5a0f83de-4922-4838-895a-8e016d0580a4'
                        from '6c309e09-95ad-4561-a06a-a4c86782dd16'
                        to  'Logical Architecture'::'Structure'::'Rider'::'fba65548-a637-4ccb-9bff-4a554a6501d0' { 
                        @TransfoLink { 
                            @CapellaID { eid = "5a0f83de-4922-4838-895a-8e016d0580a4"; } 
                        }  
                    }  
                    dependency 'e5710814-e822-4719-8817-1655c7b984c7'
                        from 'ad4d37d4-d87d-4944-ba1b-060210f40285'
                        to  'Logical Architecture'::'Structure'::'Rider'::'3440b319-0eb5-4079-b7cc-84c04894eb04' { 
                        @TransfoLink { 
                            @CapellaID { eid = "e5710814-e822-4719-8817-1655c7b984c7"; } 
                        }  
                    }  
                    ref :>> ownedFunctionalAllocation =  ('6c309e09-95ad-4561-a06a-a4c86782dd16',
                    'ad4d37d4-d87d-4944-ba1b-060210f40285',
                    '0dcf4a30-9cb6-40e2-a377-54ee983ed397',
                    'd4711af6-cf95-4751-8d61-b7d7a728c3d4',
                    'cf75eb15-46c4-45ed-9add-3a6811d9d1a3'); 
                     
                }  
            } 
        } 
    } 
    item '027944a6-716f-4420-aec1-18d5fde04326' : ModelInformation  { 
        @CapellaID { eid = "027944a6-716f-4420-aec1-18d5fde04326"; } 
    }  
    enum def 'ProgressStatus' :> EnumerationPropertyType  { 
        enum 'DRAFT'; 
        enum 'TO_BE_REVIEWED'; 
        enum 'TO_BE_DISCUSSED'; 
        enum 'REWORK_NECESSARY'; 
        enum 'UNDER_REWORK'; 
        enum 'REVIEWED_OK'; 
    }  
}
