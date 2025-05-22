.class Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity$12;
.super Ljava/lang/Object;
.source "AirCraftControlActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->upLandProtectStatus(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;

.field final synthetic val$status:I


# direct methods
.method constructor <init>(Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;I)V
    .locals 0

    .line 1944
    iput-object p1, p0, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity$12;->this$0:Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;

    iput p2, p0, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity$12;->val$status:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 9

    .line 1947
    iget v0, p0, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity$12;->val$status:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 1948
    iget-object v2, p0, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity$12;->this$0:Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;

    sget v0, Lcom/powervision/aircraft/R$string;->AP03_TakeoffAndlanding_14_1:I

    .line 1949
    invoke-virtual {v2, v0}, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    iget-object v0, p0, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity$12;->this$0:Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;

    sget v1, Lcom/powervision/aircraft/R$string;->AP03_TakeoffAndlanding_14_2:I

    .line 1950
    invoke-virtual {v0, v1}, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    iget-object v0, p0, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity$12;->this$0:Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;

    sget v1, Lcom/powervision/aircraft/R$string;->AP03_TakeoffAndlanding_15:I

    .line 1951
    invoke-virtual {v0, v1}, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->getString(I)Ljava/lang/String;

    move-result-object v5

    iget-object v0, p0, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity$12;->this$0:Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;

    sget v1, Lcom/powervision/aircraft/R$string;->AP03_TakeoffAndlanding_16:I

    .line 1952
    invoke-virtual {v0, v1}, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->getString(I)Ljava/lang/String;

    move-result-object v6

    new-instance v7, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity$12$1;

    invoke-direct {v7, p0}, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity$12$1;-><init>(Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity$12;)V

    new-instance v8, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity$12$2;

    invoke-direct {v8, p0}, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity$12$2;-><init>(Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity$12;)V

    .line 1948
    invoke-static/range {v2 .. v8}, Lcom/powervision/base/utils/DialogUtils;->customDialog(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Lcom/powervision/base/utils/DialogUtils$OnClickListener;Lcom/powervision/base/utils/DialogUtils$OnClickListener;)Landroidx/appcompat/app/AlertDialog;

    goto :goto_0

    .line 1965
    :cond_0
    new-instance v0, Lcom/powervision/base/warning/HoverMessage;

    const/4 v1, 0x4

    iget-object v2, p0, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity$12;->this$0:Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;

    .line 1966
    invoke-virtual {v2}, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/powervision/aircraft/R$string;->AP03_Msg_67:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/powervision/base/warning/HoverMessage;-><init>(ILjava/lang/String;)V

    .line 1967
    iget-object v1, p0, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity$12;->this$0:Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;

    invoke-static {v1}, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->access$2200(Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;)Lcom/powervision/base/warning/manager/WarningManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/powervision/base/warning/manager/WarningManager;->addView(Lcom/powervision/base/warning/HoverMessage;)V

    :goto_0
    return-void
.end method
