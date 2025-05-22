.class Lcn/powervision/upgrade/activity/AfterSaleListActivity$3$1;
.super Ljava/lang/Object;
.source "AfterSaleListActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/powervision/upgrade/activity/AfterSaleListActivity$3;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcn/powervision/upgrade/activity/AfterSaleListActivity$3;


# direct methods
.method constructor <init>(Lcn/powervision/upgrade/activity/AfterSaleListActivity$3;)V
    .locals 0

    .line 135
    iput-object p1, p0, Lcn/powervision/upgrade/activity/AfterSaleListActivity$3$1;->this$1:Lcn/powervision/upgrade/activity/AfterSaleListActivity$3;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 138
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    return-void
.end method
