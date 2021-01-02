//
//  KUEvent.swift
//  KUEventBus
//
//  Created by Behnam Hosseini on 12/28/20.
//

import Foundation
open class KUEvnet:KUEvnetParent {
    
    public enum EventType :String{
        case OpenModule
        case NotificationRecived
        case SettingChanged
    }
    public enum EventCaller :String{
        case Passenger
        case City
        case Messenger
        case Walet
        case Store
        case Transportation
    }
    
    open var eventType:EventType
    open var json:String
    open var receiverType:EventCaller
    open var senderType:EventCaller
    public init(senderType:EventCaller,receiverType: EventCaller,eventType:EventType,json:String) {
            self.eventType = eventType
            self.receiverType=receiverType
            self.json=json
            self.senderType=senderType
            super.init()
            self.key = receiverType.rawValue
    }
}
