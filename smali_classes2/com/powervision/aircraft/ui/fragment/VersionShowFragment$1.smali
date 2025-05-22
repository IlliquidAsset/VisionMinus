.class Lcom/powervision/aircraft/ui/fragment/VersionShowFragment$1;
.super Ljava/lang/Object;
.source "VersionShowFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/powervision/aircraft/ui/fragment/VersionShowFragment;->setListener()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/powervision/aircraft/ui/fragment/VersionShowFragment;


# direct methods
.method constructor <init>(Lcom/powervision/aircraft/ui/fragment/VersionShowFragment;)V
    .locals 0

    .line 50
    iput-object p1, p0, Lcom/powervision/aircraft/ui/fragment/VersionShowFragment$1;->this$0:Lcom/powervision/aircraft/ui/fragment/VersionShowFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    .line 53
    iget-object p1, p0, Lcom/powervision/aircraft/ui/fragment/VersionShowFragment$1;->this$0:Lcom/powervision/aircraft/ui/fragment/VersionShowFragment;

    invoke-virtual {p1}, Lcom/powervision/aircraft/ui/fragment/VersionShowFragment;->getContext()Landroid/content/Context;

    move-result-object p1

    check-cast p1, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;

    invoke-static {p1}, Lcom/powervision/aircraft/utils/SettingUtils;->closeGeneralSettingLayout(Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;)V

    return-void
.end method
