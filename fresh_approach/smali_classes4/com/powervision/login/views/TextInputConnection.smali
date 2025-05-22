.class public Lcom/powervision/login/views/TextInputConnection;
.super Landroid/view/inputmethod/InputConnectionWrapper;
.source "TextInputConnection.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/powervision/login/views/TextInputConnection$BackspaceListener;
    }
.end annotation


# instance fields
.field private mBackspaceListener:Lcom/powervision/login/views/TextInputConnection$BackspaceListener;


# direct methods
.method public constructor <init>(Landroid/view/inputmethod/InputConnection;Z)V
    .locals 0

    .line 26
    invoke-direct {p0, p1, p2}, Landroid/view/inputmethod/InputConnectionWrapper;-><init>(Landroid/view/inputmethod/InputConnection;Z)V

    return-void
.end method


# virtual methods
.method public deleteSurroundingText(II)Z
    .locals 1

    .line 36
    iget-object v0, p0, Lcom/powervision/login/views/TextInputConnection;->mBackspaceListener:Lcom/powervision/login/views/TextInputConnection$BackspaceListener;

    if-eqz v0, :cond_0

    .line 37
    invoke-interface {v0}, Lcom/powervision/login/views/TextInputConnection$BackspaceListener;->onBackspace()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x1

    return p1

    .line 42
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/view/inputmethod/InputConnectionWrapper;->deleteSurroundingText(II)Z

    move-result p1

    return p1
.end method

.method public sendKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 2

    .line 47
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    const/16 v1, 0x43

    if-ne v0, v1, :cond_0

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_0

    .line 48
    iget-object v0, p0, Lcom/powervision/login/views/TextInputConnection;->mBackspaceListener:Lcom/powervision/login/views/TextInputConnection$BackspaceListener;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/powervision/login/views/TextInputConnection$BackspaceListener;->onBackspace()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x1

    return p1

    .line 52
    :cond_0
    invoke-super {p0, p1}, Landroid/view/inputmethod/InputConnectionWrapper;->sendKeyEvent(Landroid/view/KeyEvent;)Z

    move-result p1

    return p1
.end method

.method public setBackspaceListener(Lcom/powervision/login/views/TextInputConnection$BackspaceListener;)V
    .locals 0

    .line 56
    iput-object p1, p0, Lcom/powervision/login/views/TextInputConnection;->mBackspaceListener:Lcom/powervision/login/views/TextInputConnection$BackspaceListener;

    return-void
.end method

.method public updatePastContent(Ljava/lang/String;)V
    .locals 1

    .line 60
    iget-object v0, p0, Lcom/powervision/login/views/TextInputConnection;->mBackspaceListener:Lcom/powervision/login/views/TextInputConnection$BackspaceListener;

    if-eqz v0, :cond_0

    .line 61
    invoke-interface {v0, p1}, Lcom/powervision/login/views/TextInputConnection$BackspaceListener;->onContentPast(Ljava/lang/String;)V

    :cond_0
    return-void
.end method
