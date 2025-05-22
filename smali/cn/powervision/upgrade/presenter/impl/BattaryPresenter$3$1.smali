.class Lcn/powervision/upgrade/presenter/impl/BattaryPresenter$3$1;
.super Ljava/lang/Object;
.source "BattaryPresenter.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/powervision/upgrade/presenter/impl/BattaryPresenter$3;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcn/powervision/upgrade/presenter/impl/BattaryPresenter$3;


# direct methods
.method constructor <init>(Lcn/powervision/upgrade/presenter/impl/BattaryPresenter$3;)V
    .locals 0

    .line 174
    iput-object p1, p0, Lcn/powervision/upgrade/presenter/impl/BattaryPresenter$3$1;->this$1:Lcn/powervision/upgrade/presenter/impl/BattaryPresenter$3;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 177
    iget-object p1, p0, Lcn/powervision/upgrade/presenter/impl/BattaryPresenter$3$1;->this$1:Lcn/powervision/upgrade/presenter/impl/BattaryPresenter$3;

    iget-object p1, p1, Lcn/powervision/upgrade/presenter/impl/BattaryPresenter$3;->this$0:Lcn/powervision/upgrade/presenter/impl/BattaryPresenter;

    invoke-static {p1}, Lcn/powervision/upgrade/presenter/impl/BattaryPresenter;->access$100(Lcn/powervision/upgrade/presenter/impl/BattaryPresenter;)Landroidx/appcompat/app/AlertDialog;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/appcompat/app/AlertDialog;->dismiss()V

    .line 178
    iget-object p1, p0, Lcn/powervision/upgrade/presenter/impl/BattaryPresenter$3$1;->this$1:Lcn/powervision/upgrade/presenter/impl/BattaryPresenter$3;

    iget-object p1, p1, Lcn/powervision/upgrade/presenter/impl/BattaryPresenter$3;->this$0:Lcn/powervision/upgrade/presenter/impl/BattaryPresenter;

    iget-object p2, p0, Lcn/powervision/upgrade/presenter/impl/BattaryPresenter$3$1;->this$1:Lcn/powervision/upgrade/presenter/impl/BattaryPresenter$3;

    iget p2, p2, Lcn/powervision/upgrade/presenter/impl/BattaryPresenter$3;->val$errorCode:I

    invoke-virtual {p1, p2}, Lcn/powervision/upgrade/presenter/impl/BattaryPresenter;->checkEle(I)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 179
    iget-object p1, p0, Lcn/powervision/upgrade/presenter/impl/BattaryPresenter$3$1;->this$1:Lcn/powervision/upgrade/presenter/impl/BattaryPresenter$3;

    iget-object p1, p1, Lcn/powervision/upgrade/presenter/impl/BattaryPresenter$3;->this$0:Lcn/powervision/upgrade/presenter/impl/BattaryPresenter;

    iget-object p2, p0, Lcn/powervision/upgrade/presenter/impl/BattaryPresenter$3$1;->this$1:Lcn/powervision/upgrade/presenter/impl/BattaryPresenter$3;

    iget p2, p2, Lcn/powervision/upgrade/presenter/impl/BattaryPresenter$3;->val$errorCode:I

    invoke-virtual {p1, p2}, Lcn/powervision/upgrade/presenter/impl/BattaryPresenter;->reTry(I)V

    :cond_0
    return-void
.end method
