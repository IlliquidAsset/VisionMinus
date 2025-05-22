.class public Lcom/powervision/login/views/BackListenerEditText;
.super Landroidx/appcompat/widget/AppCompatEditText;
.source "BackListenerEditText.java"


# instance fields
.field private inputConnection:Lcom/powervision/login/views/TextInputConnection;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 20
    invoke-direct {p0, p1}, Landroidx/appcompat/widget/AppCompatEditText;-><init>(Landroid/content/Context;)V

    .line 21
    invoke-direct {p0}, Lcom/powervision/login/views/BackListenerEditText;->init()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 25
    invoke-direct {p0, p1, p2}, Landroidx/appcompat/widget/AppCompatEditText;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 26
    invoke-direct {p0}, Lcom/powervision/login/views/BackListenerEditText;->init()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 30
    invoke-direct {p0, p1, p2, p3}, Landroidx/appcompat/widget/AppCompatEditText;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 31
    invoke-direct {p0}, Lcom/powervision/login/views/BackListenerEditText;->init()V

    return-void
.end method

.method private init()V
    .locals 3

    .line 35
    new-instance v0, Lcom/powervision/login/views/TextInputConnection;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/powervision/login/views/TextInputConnection;-><init>(Landroid/view/inputmethod/InputConnection;Z)V

    iput-object v0, p0, Lcom/powervision/login/views/BackListenerEditText;->inputConnection:Lcom/powervision/login/views/TextInputConnection;

    return-void
.end method


# virtual methods
.method public onCreateInputConnection(Landroid/view/inputmethod/EditorInfo;)Landroid/view/inputmethod/InputConnection;
    .locals 3

    .line 44
    iget-object v0, p0, Lcom/powervision/login/views/BackListenerEditText;->inputConnection:Lcom/powervision/login/views/TextInputConnection;

    if-nez v0, :cond_0

    .line 45
    new-instance v0, Lcom/powervision/login/views/TextInputConnection;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/powervision/login/views/TextInputConnection;-><init>(Landroid/view/inputmethod/InputConnection;Z)V

    iput-object v0, p0, Lcom/powervision/login/views/BackListenerEditText;->inputConnection:Lcom/powervision/login/views/TextInputConnection;

    .line 47
    :cond_0
    iget-object v0, p0, Lcom/powervision/login/views/BackListenerEditText;->inputConnection:Lcom/powervision/login/views/TextInputConnection;

    invoke-super {p0, p1}, Landroidx/appcompat/widget/AppCompatEditText;->onCreateInputConnection(Landroid/view/inputmethod/EditorInfo;)Landroid/view/inputmethod/InputConnection;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/powervision/login/views/TextInputConnection;->setTarget(Landroid/view/inputmethod/InputConnection;)V

    .line 48
    iget-object p1, p0, Lcom/powervision/login/views/BackListenerEditText;->inputConnection:Lcom/powervision/login/views/TextInputConnection;

    return-object p1
.end method

.method public onTextContextMenuItem(I)Z
    .locals 3

    const v0, 0x1020022

    if-ne p1, v0, :cond_1

    .line 64
    invoke-virtual {p0}, Lcom/powervision/login/views/BackListenerEditText;->getContext()Landroid/content/Context;

    move-result-object p1

    const-string v0, "clipboard"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/ClipboardManager;

    .line 65
    invoke-virtual {p1}, Landroid/content/ClipboardManager;->getPrimaryClip()Landroid/content/ClipData;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/content/ClipData;->getItemAt(I)Landroid/content/ClipData$Item;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/ClipData$Item;->getText()Ljava/lang/CharSequence;

    move-result-object p1

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    .line 67
    iget-object v0, p0, Lcom/powervision/login/views/BackListenerEditText;->inputConnection:Lcom/powervision/login/views/TextInputConnection;

    const/4 v1, 0x1

    if-nez v0, :cond_0

    .line 68
    new-instance v0, Lcom/powervision/login/views/TextInputConnection;

    const/4 v2, 0x0

    invoke-direct {v0, v2, v1}, Lcom/powervision/login/views/TextInputConnection;-><init>(Landroid/view/inputmethod/InputConnection;Z)V

    iput-object v0, p0, Lcom/powervision/login/views/BackListenerEditText;->inputConnection:Lcom/powervision/login/views/TextInputConnection;

    .line 70
    :cond_0
    iget-object v0, p0, Lcom/powervision/login/views/BackListenerEditText;->inputConnection:Lcom/powervision/login/views/TextInputConnection;

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/powervision/login/views/TextInputConnection;->updatePastContent(Ljava/lang/String;)V

    return v1

    .line 74
    :cond_1
    invoke-super {p0, p1}, Landroidx/appcompat/widget/AppCompatEditText;->onTextContextMenuItem(I)Z

    move-result p1

    return p1
.end method

.method public setBackSpaceListener(Lcom/powervision/login/views/TextInputConnection$BackspaceListener;)V
    .locals 3

    .line 52
    iget-object v0, p0, Lcom/powervision/login/views/BackListenerEditText;->inputConnection:Lcom/powervision/login/views/TextInputConnection;

    if-nez v0, :cond_0

    .line 53
    new-instance v0, Lcom/powervision/login/views/TextInputConnection;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/powervision/login/views/TextInputConnection;-><init>(Landroid/view/inputmethod/InputConnection;Z)V

    iput-object v0, p0, Lcom/powervision/login/views/BackListenerEditText;->inputConnection:Lcom/powervision/login/views/TextInputConnection;

    .line 55
    :cond_0
    iget-object v0, p0, Lcom/powervision/login/views/BackListenerEditText;->inputConnection:Lcom/powervision/login/views/TextInputConnection;

    invoke-virtual {v0, p1}, Lcom/powervision/login/views/TextInputConnection;->setBackspaceListener(Lcom/powervision/login/views/TextInputConnection$BackspaceListener;)V

    return-void
.end method
