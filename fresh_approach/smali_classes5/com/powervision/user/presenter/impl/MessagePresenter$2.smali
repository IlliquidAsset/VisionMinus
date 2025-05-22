.class Lcom/powervision/user/presenter/impl/MessagePresenter$2;
.super Ljava/lang/Object;
.source "MessagePresenter.java"

# interfaces
.implements Lcom/powervision/user/modle/IMessageModel$UpdateMessageStatus;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/powervision/user/presenter/impl/MessagePresenter;->updateMsgStatus(Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/powervision/user/presenter/impl/MessagePresenter;

.field final synthetic val$type:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/powervision/user/presenter/impl/MessagePresenter;Ljava/lang/String;)V
    .locals 0

    .line 41
    iput-object p1, p0, Lcom/powervision/user/presenter/impl/MessagePresenter$2;->this$0:Lcom/powervision/user/presenter/impl/MessagePresenter;

    iput-object p2, p0, Lcom/powervision/user/presenter/impl/MessagePresenter$2;->val$type:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public fail(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public updateSuccess()V
    .locals 2

    .line 44
    iget-object v0, p0, Lcom/powervision/user/presenter/impl/MessagePresenter$2;->this$0:Lcom/powervision/user/presenter/impl/MessagePresenter;

    invoke-static {v0}, Lcom/powervision/user/presenter/impl/MessagePresenter;->access$600(Lcom/powervision/user/presenter/impl/MessagePresenter;)Lcom/powervision/base/base/BaseView;

    move-result-object v0

    check-cast v0, Lcom/powervision/user/ui/view/IMessageView;

    iget-object v1, p0, Lcom/powervision/user/presenter/impl/MessagePresenter$2;->val$type:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/powervision/user/ui/view/IMessageView;->clearUnReadSuccess(Ljava/lang/String;)V

    return-void
.end method
