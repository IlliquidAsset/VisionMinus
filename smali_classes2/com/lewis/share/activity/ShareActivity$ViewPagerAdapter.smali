.class Lcom/lewis/share/activity/ShareActivity$ViewPagerAdapter;
.super Landroidx/fragment/app/FragmentStatePagerAdapter;
.source "ShareActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lewis/share/activity/ShareActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ViewPagerAdapter"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lewis/share/activity/ShareActivity;


# direct methods
.method constructor <init>(Lcom/lewis/share/activity/ShareActivity;Landroidx/fragment/app/FragmentManager;)V
    .locals 0

    .line 150
    iput-object p1, p0, Lcom/lewis/share/activity/ShareActivity$ViewPagerAdapter;->this$0:Lcom/lewis/share/activity/ShareActivity;

    .line 151
    invoke-direct {p0, p2}, Landroidx/fragment/app/FragmentStatePagerAdapter;-><init>(Landroidx/fragment/app/FragmentManager;)V

    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .line 161
    iget-object v0, p0, Lcom/lewis/share/activity/ShareActivity$ViewPagerAdapter;->this$0:Lcom/lewis/share/activity/ShareActivity;

    invoke-static {v0}, Lcom/lewis/share/activity/ShareActivity;->access$000(Lcom/lewis/share/activity/ShareActivity;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Landroidx/fragment/app/Fragment;
    .locals 1

    .line 156
    iget-object v0, p0, Lcom/lewis/share/activity/ShareActivity$ViewPagerAdapter;->this$0:Lcom/lewis/share/activity/ShareActivity;

    invoke-static {v0}, Lcom/lewis/share/activity/ShareActivity;->access$000(Lcom/lewis/share/activity/ShareActivity;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroidx/fragment/app/Fragment;

    return-object p1
.end method
