require 'test_helper'

class GossipInfosControllerTest < ActionDispatch::IntegrationTest
  test "should get gossip" do
    get gossip_infos_gossip_url
    assert_response :success
  end

  test "should get author" do
    get gossip_infos_author_url
    assert_response :success
  end

end
