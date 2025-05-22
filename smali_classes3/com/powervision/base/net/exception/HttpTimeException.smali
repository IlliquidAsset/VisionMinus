.class public Lcom/powervision/base/net/exception/HttpTimeException;
.super Ljava/lang/RuntimeException;
.source "HttpTimeException.java"


# static fields
.field public static final CACHE_TIMEOUT_ERROR:I = 0x102

.field public static final HTTP_ERROR:I = 0x100

.field public static final NO_CACHE_ERROR:I = 0x101

.field public static final NO_DATA_ERROR:I = 0x103


# direct methods
.method public constructor <init>(I)V
    .locals 0

    .line 23
    invoke-static {p1}, Lcom/powervision/base/net/exception/HttpTimeException;->getApiExceptionMessage(I)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/powervision/base/net/exception/HttpTimeException;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 27
    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method public static getApiExceptionMessage(I)Ljava/lang/String;
    .locals 2

    .line 37
    invoke-static {}, Lcom/powervision/base/base/BaseApplication;->getInstanceApp()Lcom/powervision/base/base/BaseApplication;

    move-result-object v0

    const/4 v1, -0x1

    if-eq p0, v1, :cond_3

    const/16 v1, 0x11

    if-eq p0, v1, :cond_2

    const/16 v1, 0x100

    if-eq p0, v1, :cond_1

    const/16 v1, 0x1f4

    if-eq p0, v1, :cond_0

    packed-switch p0, :pswitch_data_0

    const-string p0, ""

    goto/16 :goto_0

    .line 79
    :pswitch_0
    sget p0, Lcom/powervision/base/R$string;->APP_function_31:I

    invoke-virtual {v0, p0}, Lcom/powervision/base/base/BaseApplication;->getString(I)Ljava/lang/String;

    move-result-object p0

    goto/16 :goto_0

    .line 76
    :pswitch_1
    sget p0, Lcom/powervision/base/R$string;->APP_function_30:I

    invoke-virtual {v0, p0}, Lcom/powervision/base/base/BaseApplication;->getString(I)Ljava/lang/String;

    move-result-object p0

    goto/16 :goto_0

    .line 73
    :pswitch_2
    sget p0, Lcom/powervision/base/R$string;->APP_function_29:I

    invoke-virtual {v0, p0}, Lcom/powervision/base/base/BaseApplication;->getString(I)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    .line 70
    :pswitch_3
    sget p0, Lcom/powervision/base/R$string;->APP_function_28:I

    invoke-virtual {v0, p0}, Lcom/powervision/base/base/BaseApplication;->getString(I)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    .line 67
    :pswitch_4
    sget p0, Lcom/powervision/base/R$string;->APP_function_27:I

    invoke-virtual {v0, p0}, Lcom/powervision/base/base/BaseApplication;->getString(I)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    .line 64
    :pswitch_5
    sget p0, Lcom/powervision/base/R$string;->APP_function_41:I

    invoke-virtual {v0, p0}, Lcom/powervision/base/base/BaseApplication;->getString(I)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    .line 61
    :pswitch_6
    sget p0, Lcom/powervision/base/R$string;->APP_function_40:I

    invoke-virtual {v0, p0}, Lcom/powervision/base/base/BaseApplication;->getString(I)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    .line 58
    :pswitch_7
    sget p0, Lcom/powervision/base/R$string;->APP_function_39:I

    invoke-virtual {v0, p0}, Lcom/powervision/base/base/BaseApplication;->getString(I)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    .line 55
    :pswitch_8
    sget p0, Lcom/powervision/base/R$string;->APP_function_38:I

    invoke-virtual {v0, p0}, Lcom/powervision/base/base/BaseApplication;->getString(I)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    .line 52
    :pswitch_9
    sget p0, Lcom/powervision/base/R$string;->APP_function_36:I

    invoke-virtual {v0, p0}, Lcom/powervision/base/base/BaseApplication;->getString(I)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    .line 49
    :pswitch_a
    sget p0, Lcom/powervision/base/R$string;->APP_function_35:I

    invoke-virtual {v0, p0}, Lcom/powervision/base/base/BaseApplication;->getString(I)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    .line 46
    :pswitch_b
    sget p0, Lcom/powervision/base/R$string;->APP_function_34:I

    invoke-virtual {v0, p0}, Lcom/powervision/base/base/BaseApplication;->getString(I)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    .line 43
    :pswitch_c
    sget p0, Lcom/powervision/base/R$string;->APP_function_33:I

    invoke-virtual {v0, p0}, Lcom/powervision/base/base/BaseApplication;->getString(I)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    .line 85
    :cond_0
    sget p0, Lcom/powervision/base/R$string;->APP_function_34:I

    invoke-virtual {v0, p0}, Lcom/powervision/base/base/BaseApplication;->getString(I)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    .line 88
    :cond_1
    sget p0, Lcom/powervision/base/R$string;->APP_Msg_5:I

    invoke-virtual {v0, p0}, Lcom/powervision/base/base/BaseApplication;->getString(I)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    .line 82
    :cond_2
    sget p0, Lcom/powervision/base/R$string;->APP_function_32:I

    invoke-virtual {v0, p0}, Lcom/powervision/base/base/BaseApplication;->getString(I)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    .line 40
    :cond_3
    sget p0, Lcom/powervision/base/R$string;->APP_function_25:I

    invoke-virtual {v0, p0}, Lcom/powervision/base/base/BaseApplication;->getString(I)Ljava/lang/String;

    move-result-object p0

    :goto_0
    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
