
"use strict";

let VehOperatingData = require('./VehOperatingData.js');
let ParamOptimizeInterface = require('./ParamOptimizeInterface.js');
let GlobalPathPlanningInterface = require('./GlobalPathPlanningInterface.js');
let FaultDiagnosisInterface = require('./FaultDiagnosisInterface.js');
let NodePointsInterface = require('./NodePointsInterface.js');
let CarActionInterface = require('./CarActionInterface.js');
let GpsImuInterface = require('./GpsImuInterface.js');
let PathSpeedCtrlInterface = require('./PathSpeedCtrlInterface.js');
let HmiStartEndPointInterface = require('./HmiStartEndPointInterface.js');
let CarOriInterface = require('./CarOriInterface.js');

module.exports = {
  VehOperatingData: VehOperatingData,
  ParamOptimizeInterface: ParamOptimizeInterface,
  GlobalPathPlanningInterface: GlobalPathPlanningInterface,
  FaultDiagnosisInterface: FaultDiagnosisInterface,
  NodePointsInterface: NodePointsInterface,
  CarActionInterface: CarActionInterface,
  GpsImuInterface: GpsImuInterface,
  PathSpeedCtrlInterface: PathSpeedCtrlInterface,
  HmiStartEndPointInterface: HmiStartEndPointInterface,
  CarOriInterface: CarOriInterface,
};
