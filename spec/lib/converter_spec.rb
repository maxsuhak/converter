RSpec.describe Converter do
  it 'has a version number' do
    expect(Converter::VERSION).not_to be nil
  end

  it 'has a convert pattern' do
    expect(Converter::PATTERN).not_to be nil
  end

  describe '.proceed' do
    let(:response) do
      <<-EOT
        Events[0].Lane=1
        Events[0].SnapSourceCombine=false
        Events[0].Object.Country=GBR
        Events[0].Object.BoundingBox[0]=1248
        Events[0].Object.BoundingBox[1]=3528
        Events[0].Object.BoundingBox[2]=1920
        Events[0].Object.BoundingBox[3]=3848
        Events[0].Object.Center[0]=1584
      EOT
    end

    let(:result) { Converter.proceed(response) }

    it 'returns converted hash' do
      expect(result).to eq({
                             'Lane' => 1,
                             'SnapSourceCombine' => false,
                             'Object' => {
                               'BoundingBox' => [1248, 3528, 1920, 3848],
                               'Center' => [1584],
                               'Country' => 'GBR'
                             }
                           })
    end

    it 'returns values in proper types' do
      expect(result['Lane']).to be_a(Integer)
      expect(result['SnapSourceCombine']).to be_a(FalseClass)
      expect(result['Object']['Country']).to be_a(String)
      expect(result['Object']['BoundingBox']).to be_an_instance_of(Array)
      expect(result['Object']['Center']).to be_an_instance_of(Array)
    end
  end
end
