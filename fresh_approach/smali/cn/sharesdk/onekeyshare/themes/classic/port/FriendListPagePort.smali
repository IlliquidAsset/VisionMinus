.class public Lcn/sharesdk/onekeyshare/themes/classic/port/FriendListPagePort;
.super Lcn/sharesdk/onekeyshare/themes/classic/FriendListPage;
.source "FriendListPagePort.java"


# static fields
.field private static final DESIGN_SCREEN_WIDTH:I = 0x2d0

.field private static final DESIGN_TITLE_HEIGHT:I = 0x60


# direct methods
.method public constructor <init>(Lcn/sharesdk/onekeyshare/OnekeyShareThemeImpl;)V
    .locals 0

    .line 38
    invoke-direct {p0, p1}, Lcn/sharesdk/onekeyshare/themes/classic/FriendListPage;-><init>(Lcn/sharesdk/onekeyshare/OnekeyShareThemeImpl;)V

    return-void
.end method


# virtual methods
.method protected getDesignTitleHeight()I
    .locals 1

    const/16 v0, 0x60

    return v0
.end method

.method protected getRatio()F
    .locals 2

    .line 42
    iget-object v0, p0, Lcn/sharesdk/onekeyshare/themes/classic/port/FriendListPagePort;->activity:Landroid/app/Activity;

    invoke-static {v0}, Lcom/mob/tools/utils/ResHelper;->getScreenWidth(Landroid/content/Context;)I

    move-result v0

    int-to-float v0, v0

    const/high16 v1, 0x44340000    # 720.0f

    div-float/2addr v0, v1

    return v0
.end method
