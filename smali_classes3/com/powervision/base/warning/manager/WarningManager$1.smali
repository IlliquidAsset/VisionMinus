.class Lcom/powervision/base/warning/manager/WarningManager$1;
.super Ljava/lang/Object;
.source "WarningManager.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/powervision/base/warning/manager/WarningManager;->showItems(Lcom/powervision/base/warning/HoverMessage;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/powervision/base/warning/manager/WarningManager;

.field final synthetic val$hoverMessage:Lcom/powervision/base/warning/HoverMessage;

.field final synthetic val$itemView:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/powervision/base/warning/manager/WarningManager;Lcom/powervision/base/warning/HoverMessage;Landroid/view/View;)V
    .locals 0

    .line 245
    iput-object p1, p0, Lcom/powervision/base/warning/manager/WarningManager$1;->this$0:Lcom/powervision/base/warning/manager/WarningManager;

    iput-object p2, p0, Lcom/powervision/base/warning/manager/WarningManager$1;->val$hoverMessage:Lcom/powervision/base/warning/HoverMessage;

    iput-object p3, p0, Lcom/powervision/base/warning/manager/WarningManager$1;->val$itemView:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 248
    iget-object p1, p0, Lcom/powervision/base/warning/manager/WarningManager$1;->this$0:Lcom/powervision/base/warning/manager/WarningManager;

    invoke-static {p1}, Lcom/powervision/base/warning/manager/WarningManager;->access$200(Lcom/powervision/base/warning/manager/WarningManager;)Lcom/powervision/base/warning/manager/WarningManager$OnWarningCallback;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 249
    iget-object p1, p0, Lcom/powervision/base/warning/manager/WarningManager$1;->this$0:Lcom/powervision/base/warning/manager/WarningManager;

    invoke-static {p1}, Lcom/powervision/base/warning/manager/WarningManager;->access$200(Lcom/powervision/base/warning/manager/WarningManager;)Lcom/powervision/base/warning/manager/WarningManager$OnWarningCallback;

    move-result-object p1

    iget-object v0, p0, Lcom/powervision/base/warning/manager/WarningManager$1;->val$hoverMessage:Lcom/powervision/base/warning/HoverMessage;

    invoke-interface {p1, v0}, Lcom/powervision/base/warning/manager/WarningManager$OnWarningCallback;->closeWarnOnTop(Lcom/powervision/base/warning/HoverMessage;)V

    .line 251
    :cond_0
    iget-object p1, p0, Lcom/powervision/base/warning/manager/WarningManager$1;->this$0:Lcom/powervision/base/warning/manager/WarningManager;

    invoke-static {p1}, Lcom/powervision/base/warning/manager/WarningManager;->access$000(Lcom/powervision/base/warning/manager/WarningManager;)Lcom/google/android/flexbox/FlexboxLayout;

    move-result-object p1

    iget-object v0, p0, Lcom/powervision/base/warning/manager/WarningManager$1;->val$itemView:Landroid/view/View;

    invoke-virtual {p1, v0}, Lcom/google/android/flexbox/FlexboxLayout;->removeView(Landroid/view/View;)V

    .line 252
    iget-object p1, p0, Lcom/powervision/base/warning/manager/WarningManager$1;->this$0:Lcom/powervision/base/warning/manager/WarningManager;

    invoke-static {p1}, Lcom/powervision/base/warning/manager/WarningManager;->access$100(Lcom/powervision/base/warning/manager/WarningManager;)Ljava/util/List;

    move-result-object p1

    iget-object v0, p0, Lcom/powervision/base/warning/manager/WarningManager$1;->val$hoverMessage:Lcom/powervision/base/warning/HoverMessage;

    invoke-interface {p1, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 254
    iget-object p1, p0, Lcom/powervision/base/warning/manager/WarningManager$1;->val$hoverMessage:Lcom/powervision/base/warning/HoverMessage;

    invoke-virtual {p1}, Lcom/powervision/base/warning/HoverMessage;->getContent()Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lcom/powervision/base/warning/manager/WarningManager$1;->this$0:Lcom/powervision/base/warning/manager/WarningManager;

    invoke-static {v0}, Lcom/powervision/base/warning/manager/WarningManager;->access$500(Lcom/powervision/base/warning/manager/WarningManager;)Landroid/content/Context;

    move-result-object v0

    sget v1, Lcom/powervision/base/R$string;->AP03_Msg_77:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    iget-object p1, p0, Lcom/powervision/base/warning/manager/WarningManager$1;->val$hoverMessage:Lcom/powervision/base/warning/HoverMessage;

    .line 255
    invoke-virtual {p1}, Lcom/powervision/base/warning/HoverMessage;->getContent()Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lcom/powervision/base/warning/manager/WarningManager$1;->this$0:Lcom/powervision/base/warning/manager/WarningManager;

    invoke-static {v0}, Lcom/powervision/base/warning/manager/WarningManager;->access$500(Lcom/powervision/base/warning/manager/WarningManager;)Landroid/content/Context;

    move-result-object v0

    sget v1, Lcom/powervision/base/R$string;->AP03_Msg_47:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    iget-object p1, p0, Lcom/powervision/base/warning/manager/WarningManager$1;->val$hoverMessage:Lcom/powervision/base/warning/HoverMessage;

    .line 256
    invoke-virtual {p1}, Lcom/powervision/base/warning/HoverMessage;->getContent()Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lcom/powervision/base/warning/manager/WarningManager$1;->this$0:Lcom/powervision/base/warning/manager/WarningManager;

    invoke-static {v0}, Lcom/powervision/base/warning/manager/WarningManager;->access$500(Lcom/powervision/base/warning/manager/WarningManager;)Landroid/content/Context;

    move-result-object v0

    sget v1, Lcom/powervision/base/R$string;->AP03_Msg_213:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    .line 257
    iget-object p1, p0, Lcom/powervision/base/warning/manager/WarningManager$1;->this$0:Lcom/powervision/base/warning/manager/WarningManager;

    invoke-static {p1}, Lcom/powervision/base/warning/manager/WarningManager;->access$600(Lcom/powervision/base/warning/manager/WarningManager;)Ljava/util/List;

    move-result-object p1

    iget-object v0, p0, Lcom/powervision/base/warning/manager/WarningManager$1;->val$hoverMessage:Lcom/powervision/base/warning/HoverMessage;

    invoke-virtual {v0}, Lcom/powervision/base/warning/HoverMessage;->getContent()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    return-void
.end method
