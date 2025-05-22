.class Lcom/powervision/login/views/VerificationCodeInput$1;
.super Ljava/lang/Object;
.source "VerificationCodeInput.java"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/powervision/login/views/VerificationCodeInput;->initViews()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/powervision/login/views/VerificationCodeInput;


# direct methods
.method constructor <init>(Lcom/powervision/login/views/VerificationCodeInput;)V
    .locals 0

    .line 73
    iput-object p1, p0, Lcom/powervision/login/views/VerificationCodeInput$1;->this$0:Lcom/powervision/login/views/VerificationCodeInput;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 0

    .line 92
    invoke-interface {p1}, Landroid/text/Editable;->length()I

    move-result p1

    if-nez p1, :cond_0

    goto :goto_0

    .line 94
    :cond_0
    iget-object p1, p0, Lcom/powervision/login/views/VerificationCodeInput$1;->this$0:Lcom/powervision/login/views/VerificationCodeInput;

    invoke-static {p1}, Lcom/powervision/login/views/VerificationCodeInput;->access$000(Lcom/powervision/login/views/VerificationCodeInput;)V

    .line 95
    iget-object p1, p0, Lcom/powervision/login/views/VerificationCodeInput$1;->this$0:Lcom/powervision/login/views/VerificationCodeInput;

    invoke-static {p1}, Lcom/powervision/login/views/VerificationCodeInput;->access$100(Lcom/powervision/login/views/VerificationCodeInput;)V

    :goto_0
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    .line 80
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result p2

    const/4 p3, 0x1

    if-le p2, p3, :cond_1

    .line 81
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/powervision/base/utils/SmsUtils;->parseSmsBody(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 82
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_0

    .line 83
    iget-object p2, p0, Lcom/powervision/login/views/VerificationCodeInput$1;->this$0:Lcom/powervision/login/views/VerificationCodeInput;

    invoke-virtual {p2, p1}, Lcom/powervision/login/views/VerificationCodeInput;->setVerifyCode(Ljava/lang/String;)V

    goto :goto_0

    .line 85
    :cond_0
    iget-object p1, p0, Lcom/powervision/login/views/VerificationCodeInput$1;->this$0:Lcom/powervision/login/views/VerificationCodeInput;

    invoke-virtual {p1}, Lcom/powervision/login/views/VerificationCodeInput;->clearAll()V

    :cond_1
    :goto_0
    return-void
.end method
