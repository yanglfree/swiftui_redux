//
//  Middleware.swift
//  ThreeDucks
//
//  Created by Liang on 2021/6/29.
//

import Combine

typealias Middleware<State, Action> = (State, Action) -> AnyPublisher<Action, Never>


