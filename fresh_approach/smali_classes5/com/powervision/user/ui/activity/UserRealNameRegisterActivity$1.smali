.class Lcom/powervision/user/ui/activity/UserRealNameRegisterActivity$1;
.super Ljava/lang/Object;
.source "UserRealNameRegisterActivity.java"

# interfaces
.implements Lcom/chad/library/adapter/base/BaseQuickAdapter$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/powervision/user/ui/activity/UserRealNameRegisterActivity;->setListener()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/powervision/user/ui/activity/UserRealNameRegisterActivity;


# direct methods
.method constructor <init>(Lcom/powervision/user/ui/activity/UserRealNameRegisterActivity;)V
    .locals 0

    .line 98
    iput-object p1, p0, Lcom/powervision/user/ui/activity/UserRealNameRegisterActivity$1;->this$0:Lcom/powervision/user/ui/activity/UserRealNameRegisterActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Lcom/chad/library/adapter/base/BaseQuickAdapter;Landroid/view/View;I)V
    .locals 0

    .line 101
    iget-object p1, p0, Lcom/powervision/user/ui/activity/UserRealNameRegisterActivity$1;->this$0:Lcom/powervision/user/ui/activity/UserRealNameRegisterActivity;

    invoke-static {p1}, Lcom/powervision/user/ui/activity/UserRealNameRegisterActivity;->access$000(Lcom/powervision/user/ui/activity/UserRealNameRegisterActivity;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/powervision/user/bean/UrnRegisterItemBean;

    .line 102
    iget-object p2, p0, Lcom/powervision/user/ui/activity/UserRealNameRegisterActivity$1;->this$0:Lcom/powervision/user/ui/activity/UserRealNameRegisterActivity;

    const/4 p3, 0x1

    invoke-static {p2, p3, p1}, Lcom/powervision/user/ui/activity/UserRealNameNewAddActivity;->goInTo(Landroid/content/Context;ILcom/powervision/user/bean/UrnRegisterItemBean;)V

    return-void
.end method
