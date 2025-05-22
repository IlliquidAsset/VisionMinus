.class public Lcom/powervision/firebase/MessageActivity;
.super Landroidx/appcompat/app/AppCompatActivity;
.source "MessageActivity.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 11
    invoke-direct {p0}, Landroidx/appcompat/app/AppCompatActivity;-><init>()V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 0

    .line 15
    invoke-super {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    .line 16
    new-instance p1, Landroid/widget/TextView;

    invoke-direct {p1, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0, p1}, Lcom/powervision/firebase/MessageActivity;->setContentView(Landroid/view/View;)V

    .line 17
    invoke-static {}, Lcom/powervision/base/router/RouterUtil$Aircraft;->getFindActivity()Landroid/app/Activity;

    return-void
.end method
