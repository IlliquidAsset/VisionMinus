.class public Lcn/sharesdk/onekeyshare/themes/classic/FriendAdapter;
.super Lcom/mob/tools/gui/PullToRequestListAdapter;
.source "FriendAdapter.java"

# interfaces
.implements Lcn/sharesdk/framework/PlatformActionListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/sharesdk/onekeyshare/themes/classic/FriendAdapter$FollowersResult;,
        Lcn/sharesdk/onekeyshare/themes/classic/FriendAdapter$Following;
    }
.end annotation


# instance fields
.field private activity:Lcn/sharesdk/onekeyshare/themes/classic/FriendListPage;

.field private curPage:I

.field private follows:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcn/sharesdk/onekeyshare/themes/classic/FriendAdapter$Following;",
            ">;"
        }
    .end annotation
.end field

.field private hasNext:Z

.field private llHeader:Lcn/sharesdk/onekeyshare/themes/classic/PRTHeader;

.field private map:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private final pageCount:I

.field private platform:Lcn/sharesdk/framework/Platform;

.field private ratio:F


# direct methods
.method public constructor <init>(Lcn/sharesdk/onekeyshare/themes/classic/FriendListPage;Lcom/mob/tools/gui/PullToRequestView;)V
    .locals 1

    .line 88
    invoke-direct {p0, p2}, Lcom/mob/tools/gui/PullToRequestListAdapter;-><init>(Lcom/mob/tools/gui/PullToRequestView;)V

    const/16 p2, 0xf

    .line 55
    iput p2, p0, Lcn/sharesdk/onekeyshare/themes/classic/FriendAdapter;->pageCount:I

    .line 89
    iput-object p1, p0, Lcn/sharesdk/onekeyshare/themes/classic/FriendAdapter;->activity:Lcn/sharesdk/onekeyshare/themes/classic/FriendListPage;

    const/4 p1, -0x1

    .line 91
    iput p1, p0, Lcn/sharesdk/onekeyshare/themes/classic/FriendAdapter;->curPage:I

    const/4 p1, 0x1

    .line 92
    iput-boolean p1, p0, Lcn/sharesdk/onekeyshare/themes/classic/FriendAdapter;->hasNext:Z

    .line 93
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lcn/sharesdk/onekeyshare/themes/classic/FriendAdapter;->map:Ljava/util/HashMap;

    .line 94
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcn/sharesdk/onekeyshare/themes/classic/FriendAdapter;->follows:Ljava/util/ArrayList;

    .line 96
    invoke-virtual {p0}, Lcn/sharesdk/onekeyshare/themes/classic/FriendAdapter;->getListView()Landroid/widget/ListView;

    move-result-object p1

    new-instance p2, Landroid/graphics/drawable/ColorDrawable;

    const v0, -0x151516

    invoke-direct {p2, v0}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {p1, p2}, Landroid/widget/ListView;->setDivider(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method static synthetic access$000(Lcn/sharesdk/onekeyshare/themes/classic/FriendAdapter;)I
    .locals 0

    .line 46
    iget p0, p0, Lcn/sharesdk/onekeyshare/themes/classic/FriendAdapter;->curPage:I

    return p0
.end method

.method static synthetic access$100(Lcn/sharesdk/onekeyshare/themes/classic/FriendAdapter;)Ljava/util/ArrayList;
    .locals 0

    .line 46
    iget-object p0, p0, Lcn/sharesdk/onekeyshare/themes/classic/FriendAdapter;->follows:Ljava/util/ArrayList;

    return-object p0
.end method

.method static synthetic access$300(Lcn/sharesdk/onekeyshare/themes/classic/FriendAdapter;)Lcn/sharesdk/onekeyshare/themes/classic/FriendListPage;
    .locals 0

    .line 46
    iget-object p0, p0, Lcn/sharesdk/onekeyshare/themes/classic/FriendAdapter;->activity:Lcn/sharesdk/onekeyshare/themes/classic/FriendListPage;

    return-object p0
.end method

.method private next()V
    .locals 4

    .line 114
    iget-boolean v0, p0, Lcn/sharesdk/onekeyshare/themes/classic/FriendAdapter;->hasNext:Z

    if-eqz v0, :cond_0

    .line 115
    iget-object v0, p0, Lcn/sharesdk/onekeyshare/themes/classic/FriendAdapter;->platform:Lcn/sharesdk/framework/Platform;

    const/16 v1, 0xf

    iget v2, p0, Lcn/sharesdk/onekeyshare/themes/classic/FriendAdapter;->curPage:I

    add-int/lit8 v2, v2, 0x1

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcn/sharesdk/framework/Platform;->listFriend(IILjava/lang/String;)V

    :cond_0
    return-void
.end method

.method private parseFollowers(Ljava/lang/String;Ljava/util/HashMap;Ljava/util/HashMap;)Lcn/sharesdk/onekeyshare/themes/classic/FriendAdapter$FollowersResult;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            ">;)",
            "Lcn/sharesdk/onekeyshare/themes/classic/FriendAdapter$FollowersResult;"
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p2, :cond_e

    .line 151
    invoke-virtual {p2}, Ljava/util/HashMap;->size()I

    move-result v1

    if-gtz v1, :cond_0

    goto/16 :goto_5

    .line 156
    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    const-string v2, "SinaWeibo"

    .line 157
    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    const-string v3, "profile_image_url"

    const-string v4, "description"

    const-string v5, "id"

    const-string v6, "users"

    const/4 v7, 0x0

    const-string v8, "name"

    const/4 v9, 0x1

    if-eqz v2, :cond_3

    .line 160
    invoke-virtual {p2, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/ArrayList;

    .line 161
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_1
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/HashMap;

    .line 162
    invoke-virtual {v2, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    .line 163
    invoke-virtual {p3, v6}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_1

    .line 164
    new-instance v10, Lcn/sharesdk/onekeyshare/themes/classic/FriendAdapter$Following;

    invoke-direct {v10}, Lcn/sharesdk/onekeyshare/themes/classic/FriendAdapter$Following;-><init>()V

    .line 165
    iput-object v6, v10, Lcn/sharesdk/onekeyshare/themes/classic/FriendAdapter$Following;->uid:Ljava/lang/String;

    .line 166
    invoke-virtual {v2, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v10, Lcn/sharesdk/onekeyshare/themes/classic/FriendAdapter$Following;->screenName:Ljava/lang/String;

    .line 167
    invoke-virtual {v2, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v10, Lcn/sharesdk/onekeyshare/themes/classic/FriendAdapter$Following;->description:Ljava/lang/String;

    .line 168
    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v10, Lcn/sharesdk/onekeyshare/themes/classic/FriendAdapter$Following;->icon:Ljava/lang/String;

    .line 169
    iget-object v2, v10, Lcn/sharesdk/onekeyshare/themes/classic/FriendAdapter$Following;->screenName:Ljava/lang/String;

    iput-object v2, v10, Lcn/sharesdk/onekeyshare/themes/classic/FriendAdapter$Following;->atName:Ljava/lang/String;

    .line 170
    iget-object v2, v10, Lcn/sharesdk/onekeyshare/themes/classic/FriendAdapter$Following;->uid:Ljava/lang/String;

    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    invoke-virtual {p3, v2, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 171
    invoke-virtual {v1, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    const-string p1, "total_number"

    .line 174
    invoke-virtual {p2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {p3}, Ljava/util/HashMap;->size()I

    move-result p2

    if-le p1, p2, :cond_d

    const/4 v7, 0x1

    goto/16 :goto_4

    :cond_3
    const-string v2, "TencentWeibo"

    .line 175
    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    const-string p1, "hasnext"

    .line 176
    invoke-virtual {p2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    if-nez p1, :cond_4

    const/4 v7, 0x1

    :cond_4
    const-string p1, "info"

    .line 179
    invoke-virtual {p2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/ArrayList;

    .line 180
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_5
    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_d

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/HashMap;

    .line 181
    invoke-virtual {p2, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 182
    invoke-virtual {p3, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_5

    .line 183
    new-instance v3, Lcn/sharesdk/onekeyshare/themes/classic/FriendAdapter$Following;

    invoke-direct {v3}, Lcn/sharesdk/onekeyshare/themes/classic/FriendAdapter$Following;-><init>()V

    const-string v4, "nick"

    .line 184
    invoke-virtual {p2, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Lcn/sharesdk/onekeyshare/themes/classic/FriendAdapter$Following;->screenName:Ljava/lang/String;

    .line 185
    iput-object v2, v3, Lcn/sharesdk/onekeyshare/themes/classic/FriendAdapter$Following;->uid:Ljava/lang/String;

    .line 186
    iput-object v2, v3, Lcn/sharesdk/onekeyshare/themes/classic/FriendAdapter$Following;->atName:Ljava/lang/String;

    const-string v2, "tweet"

    .line 188
    invoke-virtual {p2, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/ArrayList;

    .line 189
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_6

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/HashMap;

    const-string v4, "text"

    .line 190
    invoke-virtual {v2, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v3, Lcn/sharesdk/onekeyshare/themes/classic/FriendAdapter$Following;->description:Ljava/lang/String;

    .line 193
    :cond_6
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "head"

    invoke-virtual {p2, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "/100"

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    iput-object p2, v3, Lcn/sharesdk/onekeyshare/themes/classic/FriendAdapter$Following;->icon:Ljava/lang/String;

    .line 194
    iget-object p2, v3, Lcn/sharesdk/onekeyshare/themes/classic/FriendAdapter$Following;->uid:Ljava/lang/String;

    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {p3, p2, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 195
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_7
    const-string v2, "Facebook"

    .line 198
    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_b

    const-string p1, "data"

    .line 201
    invoke-virtual {p2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/ArrayList;

    .line 202
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_8
    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_a

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/HashMap;

    .line 203
    invoke-virtual {v3, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .line 204
    invoke-virtual {p3, v4}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_8

    .line 205
    new-instance v6, Lcn/sharesdk/onekeyshare/themes/classic/FriendAdapter$Following;

    invoke-direct {v6}, Lcn/sharesdk/onekeyshare/themes/classic/FriendAdapter$Following;-><init>()V

    .line 206
    iput-object v4, v6, Lcn/sharesdk/onekeyshare/themes/classic/FriendAdapter$Following;->uid:Ljava/lang/String;

    .line 207
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "["

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "]"

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v6, Lcn/sharesdk/onekeyshare/themes/classic/FriendAdapter$Following;->atName:Ljava/lang/String;

    .line 208
    invoke-virtual {v3, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v6, Lcn/sharesdk/onekeyshare/themes/classic/FriendAdapter$Following;->screenName:Ljava/lang/String;

    const-string v4, "picture"

    .line 210
    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/HashMap;

    if-eqz v3, :cond_9

    .line 213
    invoke-virtual {v3, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/HashMap;

    const-string v4, "url"

    .line 214
    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v6, Lcn/sharesdk/onekeyshare/themes/classic/FriendAdapter$Following;->icon:Ljava/lang/String;

    .line 216
    :cond_9
    iget-object v3, v6, Lcn/sharesdk/onekeyshare/themes/classic/FriendAdapter$Following;->uid:Ljava/lang/String;

    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {p3, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 217
    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_a
    const-string p1, "paging"

    .line 221
    invoke-virtual {p2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/HashMap;

    const-string p2, "next"

    .line 222
    invoke-virtual {p1, p2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v7

    goto :goto_4

    :cond_b
    const-string v2, "Twitter"

    .line 223
    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_d

    .line 226
    invoke-virtual {p2, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/ArrayList;

    .line 227
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_c
    :goto_3
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_d

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/HashMap;

    const-string v2, "screen_name"

    .line 228
    invoke-virtual {p2, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 229
    invoke-virtual {p3, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_c

    .line 230
    new-instance v5, Lcn/sharesdk/onekeyshare/themes/classic/FriendAdapter$Following;

    invoke-direct {v5}, Lcn/sharesdk/onekeyshare/themes/classic/FriendAdapter$Following;-><init>()V

    .line 231
    iput-object v2, v5, Lcn/sharesdk/onekeyshare/themes/classic/FriendAdapter$Following;->uid:Ljava/lang/String;

    .line 232
    iput-object v2, v5, Lcn/sharesdk/onekeyshare/themes/classic/FriendAdapter$Following;->atName:Ljava/lang/String;

    .line 233
    invoke-virtual {p2, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v5, Lcn/sharesdk/onekeyshare/themes/classic/FriendAdapter$Following;->screenName:Ljava/lang/String;

    .line 234
    invoke-virtual {p2, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v5, Lcn/sharesdk/onekeyshare/themes/classic/FriendAdapter$Following;->description:Ljava/lang/String;

    .line 235
    invoke-virtual {p2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    iput-object p2, v5, Lcn/sharesdk/onekeyshare/themes/classic/FriendAdapter$Following;->icon:Ljava/lang/String;

    .line 236
    iget-object p2, v5, Lcn/sharesdk/onekeyshare/themes/classic/FriendAdapter$Following;->uid:Ljava/lang/String;

    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {p3, p2, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 237
    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 242
    :cond_d
    :goto_4
    new-instance p1, Lcn/sharesdk/onekeyshare/themes/classic/FriendAdapter$FollowersResult;

    invoke-direct {p1, v0}, Lcn/sharesdk/onekeyshare/themes/classic/FriendAdapter$FollowersResult;-><init>(Lcn/sharesdk/onekeyshare/themes/classic/FriendAdapter$1;)V

    .line 243
    iput-object v1, p1, Lcn/sharesdk/onekeyshare/themes/classic/FriendAdapter$FollowersResult;->list:Ljava/util/ArrayList;

    .line 244
    iput-boolean v7, p1, Lcn/sharesdk/onekeyshare/themes/classic/FriendAdapter$FollowersResult;->hasNextPage:Z

    return-object p1

    :cond_e
    :goto_5
    return-object v0
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .line 270
    iget-object v0, p0, Lcn/sharesdk/onekeyshare/themes/classic/FriendAdapter;->follows:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    :goto_0
    return v0
.end method

.method public getFooterView()Landroid/view/View;
    .locals 2

    .line 326
    new-instance v0, Landroid/widget/LinearLayout;

    invoke-virtual {p0}, Lcn/sharesdk/onekeyshare/themes/classic/FriendAdapter;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/16 v1, 0xa

    .line 327
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setMinimumHeight(I)V

    return-object v0
.end method

.method public getHeaderView()Landroid/view/View;
    .locals 2

    .line 274
    iget-object v0, p0, Lcn/sharesdk/onekeyshare/themes/classic/FriendAdapter;->llHeader:Lcn/sharesdk/onekeyshare/themes/classic/PRTHeader;

    if-nez v0, :cond_0

    .line 275
    new-instance v0, Lcn/sharesdk/onekeyshare/themes/classic/PRTHeader;

    invoke-virtual {p0}, Lcn/sharesdk/onekeyshare/themes/classic/FriendAdapter;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcn/sharesdk/onekeyshare/themes/classic/PRTHeader;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcn/sharesdk/onekeyshare/themes/classic/FriendAdapter;->llHeader:Lcn/sharesdk/onekeyshare/themes/classic/PRTHeader;

    .line 277
    :cond_0
    iget-object v0, p0, Lcn/sharesdk/onekeyshare/themes/classic/FriendAdapter;->llHeader:Lcn/sharesdk/onekeyshare/themes/classic/PRTHeader;

    return-object v0
.end method

.method public getItem(I)Lcn/sharesdk/onekeyshare/themes/classic/FriendAdapter$Following;
    .locals 1

    .line 262
    iget-object v0, p0, Lcn/sharesdk/onekeyshare/themes/classic/FriendAdapter;->follows:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcn/sharesdk/onekeyshare/themes/classic/FriendAdapter$Following;

    return-object p1
.end method

.method public bridge synthetic getItem(I)Ljava/lang/Object;
    .locals 0

    .line 46
    invoke-virtual {p0, p1}, Lcn/sharesdk/onekeyshare/themes/classic/FriendAdapter;->getItem(I)Lcn/sharesdk/onekeyshare/themes/classic/FriendAdapter$Following;

    move-result-object p1

    return-object p1
.end method

.method public getItemId(I)J
    .locals 2

    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 2

    if-nez p2, :cond_0

    .line 298
    new-instance p2, Lcn/sharesdk/onekeyshare/themes/classic/FriendListItem;

    invoke-virtual {p3}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p3

    iget v0, p0, Lcn/sharesdk/onekeyshare/themes/classic/FriendAdapter;->ratio:F

    invoke-direct {p2, p3, v0}, Lcn/sharesdk/onekeyshare/themes/classic/FriendListItem;-><init>(Landroid/content/Context;F)V

    .line 301
    :cond_0
    move-object p3, p2

    check-cast p3, Lcn/sharesdk/onekeyshare/themes/classic/FriendListItem;

    .line 302
    invoke-virtual {p0, p1}, Lcn/sharesdk/onekeyshare/themes/classic/FriendAdapter;->getItem(I)Lcn/sharesdk/onekeyshare/themes/classic/FriendAdapter$Following;

    move-result-object v0

    invoke-virtual {p0}, Lcn/sharesdk/onekeyshare/themes/classic/FriendAdapter;->isFling()Z

    move-result v1

    invoke-virtual {p3, v0, v1}, Lcn/sharesdk/onekeyshare/themes/classic/FriendListItem;->update(Lcn/sharesdk/onekeyshare/themes/classic/FriendAdapter$Following;Z)V

    .line 304
    invoke-virtual {p0}, Lcn/sharesdk/onekeyshare/themes/classic/FriendAdapter;->getCount()I

    move-result p3

    add-int/lit8 p3, p3, -0x1

    if-ne p1, p3, :cond_1

    .line 305
    invoke-direct {p0}, Lcn/sharesdk/onekeyshare/themes/classic/FriendAdapter;->next()V

    :cond_1
    return-object p2
.end method

.method public onCancel(Lcn/sharesdk/framework/Platform;I)V
    .locals 0

    .line 253
    new-instance p1, Lcn/sharesdk/onekeyshare/themes/classic/FriendAdapter$3;

    invoke-direct {p1, p0}, Lcn/sharesdk/onekeyshare/themes/classic/FriendAdapter$3;-><init>(Lcn/sharesdk/onekeyshare/themes/classic/FriendAdapter;)V

    const/4 p2, 0x0

    invoke-static {p2, p1}, Lcom/mob/tools/utils/UIHandler;->sendEmptyMessage(ILandroid/os/Handler$Callback;)Z

    return-void
.end method

.method public onComplete(Lcn/sharesdk/framework/Platform;ILjava/util/HashMap;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcn/sharesdk/framework/Platform;",
            "I",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 120
    iget-object p1, p0, Lcn/sharesdk/onekeyshare/themes/classic/FriendAdapter;->platform:Lcn/sharesdk/framework/Platform;

    invoke-virtual {p1}, Lcn/sharesdk/framework/Platform;->getName()Ljava/lang/String;

    move-result-object p1

    iget-object p2, p0, Lcn/sharesdk/onekeyshare/themes/classic/FriendAdapter;->map:Ljava/util/HashMap;

    invoke-direct {p0, p1, p3, p2}, Lcn/sharesdk/onekeyshare/themes/classic/FriendAdapter;->parseFollowers(Ljava/lang/String;Ljava/util/HashMap;Ljava/util/HashMap;)Lcn/sharesdk/onekeyshare/themes/classic/FriendAdapter$FollowersResult;

    move-result-object p1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    .line 122
    new-instance p2, Lcn/sharesdk/onekeyshare/themes/classic/FriendAdapter$1;

    invoke-direct {p2, p0}, Lcn/sharesdk/onekeyshare/themes/classic/FriendAdapter$1;-><init>(Lcn/sharesdk/onekeyshare/themes/classic/FriendAdapter;)V

    invoke-static {p1, p2}, Lcom/mob/tools/utils/UIHandler;->sendEmptyMessage(ILandroid/os/Handler$Callback;)Z

    return-void

    .line 131
    :cond_0
    iget-boolean p2, p1, Lcn/sharesdk/onekeyshare/themes/classic/FriendAdapter$FollowersResult;->hasNextPage:Z

    iput-boolean p2, p0, Lcn/sharesdk/onekeyshare/themes/classic/FriendAdapter;->hasNext:Z

    .line 132
    iget-object p2, p1, Lcn/sharesdk/onekeyshare/themes/classic/FriendAdapter$FollowersResult;->list:Ljava/util/ArrayList;

    if-eqz p2, :cond_1

    iget-object p2, p1, Lcn/sharesdk/onekeyshare/themes/classic/FriendAdapter$FollowersResult;->list:Ljava/util/ArrayList;

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result p2

    if-lez p2, :cond_1

    .line 133
    iget p2, p0, Lcn/sharesdk/onekeyshare/themes/classic/FriendAdapter;->curPage:I

    const/4 p3, 0x1

    add-int/2addr p2, p3

    iput p2, p0, Lcn/sharesdk/onekeyshare/themes/classic/FriendAdapter;->curPage:I

    .line 134
    new-instance p2, Landroid/os/Message;

    invoke-direct {p2}, Landroid/os/Message;-><init>()V

    .line 135
    iput p3, p2, Landroid/os/Message;->what:I

    .line 136
    iget-object p3, p1, Lcn/sharesdk/onekeyshare/themes/classic/FriendAdapter$FollowersResult;->list:Ljava/util/ArrayList;

    iput-object p3, p2, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 137
    new-instance p3, Lcn/sharesdk/onekeyshare/themes/classic/FriendAdapter$2;

    invoke-direct {p3, p0, p1}, Lcn/sharesdk/onekeyshare/themes/classic/FriendAdapter$2;-><init>(Lcn/sharesdk/onekeyshare/themes/classic/FriendAdapter;Lcn/sharesdk/onekeyshare/themes/classic/FriendAdapter$FollowersResult;)V

    invoke-static {p2, p3}, Lcom/mob/tools/utils/UIHandler;->sendMessage(Landroid/os/Message;Landroid/os/Handler$Callback;)Z

    :cond_1
    return-void
.end method

.method public onError(Lcn/sharesdk/framework/Platform;ILjava/lang/Throwable;)V
    .locals 0

    .line 249
    invoke-virtual {p3}, Ljava/lang/Throwable;->printStackTrace()V

    return-void
.end method

.method public onPullDown(I)V
    .locals 1

    .line 281
    iget-object v0, p0, Lcn/sharesdk/onekeyshare/themes/classic/FriendAdapter;->llHeader:Lcn/sharesdk/onekeyshare/themes/classic/PRTHeader;

    invoke-virtual {v0, p1}, Lcn/sharesdk/onekeyshare/themes/classic/PRTHeader;->onPullDown(I)V

    return-void
.end method

.method public onRefresh()V
    .locals 1

    .line 285
    iget-object v0, p0, Lcn/sharesdk/onekeyshare/themes/classic/FriendAdapter;->llHeader:Lcn/sharesdk/onekeyshare/themes/classic/PRTHeader;

    invoke-virtual {v0}, Lcn/sharesdk/onekeyshare/themes/classic/PRTHeader;->onRequest()V

    const/4 v0, -0x1

    .line 286
    iput v0, p0, Lcn/sharesdk/onekeyshare/themes/classic/FriendAdapter;->curPage:I

    const/4 v0, 0x1

    .line 287
    iput-boolean v0, p0, Lcn/sharesdk/onekeyshare/themes/classic/FriendAdapter;->hasNext:Z

    .line 288
    iget-object v0, p0, Lcn/sharesdk/onekeyshare/themes/classic/FriendAdapter;->map:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 289
    invoke-direct {p0}, Lcn/sharesdk/onekeyshare/themes/classic/FriendAdapter;->next()V

    return-void
.end method

.method public onReversed()V
    .locals 1

    .line 293
    iget-object v0, p0, Lcn/sharesdk/onekeyshare/themes/classic/FriendAdapter;->llHeader:Lcn/sharesdk/onekeyshare/themes/classic/PRTHeader;

    invoke-virtual {v0}, Lcn/sharesdk/onekeyshare/themes/classic/PRTHeader;->reverse()V

    return-void
.end method

.method public setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V
    .locals 1

    .line 105
    invoke-virtual {p0}, Lcn/sharesdk/onekeyshare/themes/classic/FriendAdapter;->getListView()Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    return-void
.end method

.method public setPlatform(Lcn/sharesdk/framework/Platform;)V
    .locals 0

    .line 109
    iput-object p1, p0, Lcn/sharesdk/onekeyshare/themes/classic/FriendAdapter;->platform:Lcn/sharesdk/framework/Platform;

    .line 110
    invoke-virtual {p1, p0}, Lcn/sharesdk/framework/Platform;->setPlatformActionListener(Lcn/sharesdk/framework/PlatformActionListener;)V

    return-void
.end method

.method public setRatio(F)V
    .locals 3

    .line 100
    iput p1, p0, Lcn/sharesdk/onekeyshare/themes/classic/FriendAdapter;->ratio:F

    .line 101
    invoke-virtual {p0}, Lcn/sharesdk/onekeyshare/themes/classic/FriendAdapter;->getListView()Landroid/widget/ListView;

    move-result-object v0

    const/high16 v1, 0x3f800000    # 1.0f

    cmpg-float v2, p1, v1

    if-gez v2, :cond_0

    const/high16 p1, 0x3f800000    # 1.0f

    :cond_0
    float-to-int p1, p1

    invoke-virtual {v0, p1}, Landroid/widget/ListView;->setDividerHeight(I)V

    return-void
.end method
