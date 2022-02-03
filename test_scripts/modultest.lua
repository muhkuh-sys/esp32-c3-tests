-- Check if modules are present.
local aModules = {
  'adc',
  'bit',
  'bthci',
  'can',
  'crypto',
  'dac',
  'encoder',
  'file',
  'gpio',
  'heaptrace',
  'http',
  'i2c',
  'ledc',
  'mqtt',
  'net',
  'node',
  'pipe',
  'pulsecnt',
  'qrcodegen',
  'sjson',
  'spi',
  'struct',
  'time',
  'tmr',
  'uart',
  'wifi',
  'ws2812'
}
for uiIndex, strModuleName in ipairs(aModules) do
  local t = _G[strModuleName]
  if t~=nil then
    print(strModuleName .. " ist da")
  else
    print(strModuleName .. " gibt es nicht")
  end
end
