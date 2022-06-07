def user_exists?
    # データベースなどからユーザーを探す（なければnil）
    user = find_user
    if user
        # ユーザーが見つかったので true
        true
    else
        # ゆーあーが見つからないので false
        false
    end
end

# 上のようなコードはこう書ける
def user_exists?
    !!find_user
end

!!true  #=> true
!!1     #=> true
!!false #=> false
!!nil   #=> false
