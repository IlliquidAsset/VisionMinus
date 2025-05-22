.class Lcom/powervision/login/views/VerificationCodeInput$2;
.super Ljava/lang/Object;
.source "VerificationCodeInput.java"

# interfaces
.implements Lcom/powervision/login/views/TextInputConnection$BackspaceListener;


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

    .line 114
    iput-object p1, p0, Lcom/powervision/login/views/VerificationCodeInput$2;->this$0:Lcom/powervision/login/views/VerificationCodeInput;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onBackspace()Z
    .locals 1

    .line 117
    iget-object v0, p0, Lcom/powervision/login/views/VerificationCodeInput$2;->this$0:Lcom/powervision/login/views/VerificationCodeInput;

    invoke-static {v0}, Lcom/powervision/login/views/VerificationCodeInput;->access$200(Lcom/powervision/login/views/VerificationCodeInput;)V

    const/4 v0, 0x0

    return v0
.end method

.method public onContentPast(Ljava/lang/String;)V
    .locals 1

    .line 123
    invoke-static {p1}, Lcom/powervision/base/utils/SmsUtils;->parseSmsBody(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 124
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 125
    iget-object v0, p0, Lcom/powervision/login/views/VerificationCodeInput$2;->this$0:Lcom/powervision/login/views/VerificationCodeInput;

    invoke-virtual {v0, p1}, Lcom/powervision/login/views/VerificationCodeInput;->setVerifyCode(Ljava/lang/String;)V

    goto :goto_0

    .line 127
    :cond_0
    iget-object p1, p0, Lcom/powervision/login/views/VerificationCodeInput$2;->this$0:Lcom/powervision/login/views/VerificationCodeInput;

    invoke-virtual {p1}, Lcom/powervision/login/views/VerificationCodeInput;->clearAll()V

    :goto_0
    return-void
.end method
