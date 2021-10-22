#!/bin/bash
set -x

TO_PROXY=proxy.vmware.local

echo -e "test.metric 1 source=${TO_PROXY}\n" | nc ${TO_PROXY} 2878

sleep 1

echo -e "test.metric 2 source=${TO_PROXY}\n" | nc ${TO_PROXY} 2878

sleep 2

echo -e "test.metric 3 source=${TO_PROXY}\n" | nc ${TO_PROXY} 2878

sleep 3
echo -e "test.metric 2 source=${TO_PROXY}\n" | nc ${TO_PROXY} 2878

sleep 2

echo -e "test.metric 1 source=${TO_PROXY}\n" | nc ${TO_PROXY} 2878

