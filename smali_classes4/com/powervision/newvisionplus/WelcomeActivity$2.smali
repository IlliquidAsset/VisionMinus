.class Lcom/powervision/newvisionplus/WelcomeActivity$2;
.super Ljava/lang/Object;
.source "WelcomeActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/powervision/newvisionplus/WelcomeActivity;->initView(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/powervision/newvisionplus/WelcomeActivity;


# direct methods
.method constructor <init>(Lcom/powervision/newvisionplus/WelcomeActivity;)V
    .locals 0

    .line 297
    iput-object p1, p0, Lcom/powervision/newvisionplus/WelcomeActivity$2;->this$0:Lcom/powervision/newvisionplus/WelcomeActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 300
    iget-object p1, p0, Lcom/powervision/newvisionplus/WelcomeActivity$2;->this$0:Lcom/powervision/newvisionplus/WelcomeActivity;

    invoke-static {p1}, Lcom/powervision/newvisionplus/WelcomeActivity;->access$700(Lcom/powervision/newvisionplus/WelcomeActivity;)Lcom/powervision/newvisionplus/WelcomeActivity$WelcomeHandler;

    move-result-object p1

    const/16 v0, 0x65

    invoke-virtual {p1, v0}, Lcom/powervision/newvisionplus/WelcomeActivity$WelcomeHandler;->sendEmptyMessage(I)Z

    .line 301
    iget-object p1, p0, Lcom/powervision/newvisionplus/WelcomeActivity$2;->this$0:Lcom/powervision/newvisionplus/WelcomeActivity;

    invoke-static {p1}, Lcom/powervision/newvisionplus/WelcomeActivity;->access$700(Lcom/powervision/newvisionplus/WelcomeActivity;)Lcom/powervision/newvisionplus/WelcomeActivity$WelcomeHandler;

    move-result-object p1

    const/16 v0, 0x67

    invoke-virtual {p1, v0}, Lcom/powervision/newvisionplus/WelcomeActivity$WelcomeHandler;->sendEmptyMessage(I)Z

    return-void
.end method
