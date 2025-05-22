.class Lcn/powervision/upgrade/activity/FirmWareDetailActivity$8;
.super Ljava/lang/Object;
.source "FirmWareDetailActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/powervision/upgrade/activity/FirmWareDetailActivity;->showTipsAboutFlow(I)V
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

    .line 547
    iput-object p1, p0, Lcn/powervision/upgrade/activity/FirmWareDetailActivity$8;->this$0:Lcn/powervision/upgrade/activity/FirmWareDetailActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 550
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    return-void
.end method
