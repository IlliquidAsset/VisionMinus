.class Lcn/powervision/upgrade/activity/FirmWareDetailActivity$4;
.super Ljava/lang/Object;
.source "FirmWareDetailActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/powervision/upgrade/activity/FirmWareDetailActivity;->initView(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcn/powervision/upgrade/activity/FirmWareDetailActivity;


# direct methods
.method constructor <init>(Lcn/powervision/upgrade/activity/FirmWareDetailActivity;)V
    .locals 0

    .line 272
    iput-object p1, p0, Lcn/powervision/upgrade/activity/FirmWareDetailActivity$4;->this$0:Lcn/powervision/upgrade/activity/FirmWareDetailActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    .line 275
    iget-object p1, p0, Lcn/powervision/upgrade/activity/FirmWareDetailActivity$4;->this$0:Lcn/powervision/upgrade/activity/FirmWareDetailActivity;

    invoke-virtual {p1}, Lcn/powervision/upgrade/activity/FirmWareDetailActivity;->finish()V

    return-void
.end method
