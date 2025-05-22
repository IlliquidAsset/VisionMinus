.class public Lcn/sharesdk/framework/g;
.super Landroid/webkit/WebViewClient;
.source "SSDKWebViewClient.java"


# static fields
.field public static final ERROR_AUTHENTICATION:I = -0x4

.field public static final ERROR_BAD_URL:I = -0xc

.field public static final ERROR_CONNECT:I = -0x6

.field public static final ERROR_FAILED_SSL_HANDSHAKE:I = -0xb

.field public static final ERROR_FILE:I = -0xd

.field public static final ERROR_FILE_NOT_FOUND:I = -0xe

.field public static final ERROR_HOST_LOOKUP:I = -0x2

.field public static final ERROR_IO:I = -0x7

.field public static final ERROR_PROXY_AUTHENTICATION:I = -0x5

.field public static final ERROR_REDIRECT_LOOP:I = -0x9

.field public static final ERROR_TIMEOUT:I = -0x8

.field public static final ERROR_TOO_MANY_REQUESTS:I = -0xf

.field public static final ERROR_UNKNOWN:I = -0x1

.field public static final ERROR_UNSUPPORTED_AUTH_SCHEME:I = -0x3

.field public static final ERROR_UNSUPPORTED_SCHEME:I = -0xa


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 35
    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    return-void
.end method


# virtual methods
.method public doUpdateVisitedHistory(Landroid/webkit/WebView;Ljava/lang/String;Z)V
    .locals 0

    return-void
.end method

.method public onFormResubmission(Landroid/webkit/WebView;Landroid/os/Message;Landroid/os/Message;)V
    .locals 0

    .line 184
    invoke-virtual {p2}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public onLoadResource(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 0

    return-void
.end method

.method public onReceivedError(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public onReceivedHttpAuthRequest(Landroid/webkit/WebView;Landroid/webkit/HttpAuthHandler;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 309
    invoke-virtual {p2}, Landroid/webkit/HttpAuthHandler;->cancel()V

    return-void
.end method

.method public onReceivedSslError(Landroid/webkit/WebView;Landroid/webkit/SslErrorHandler;Landroid/net/http/SslError;)V
    .locals 10

    .line 217
    invoke-virtual {p1}, Landroid/webkit/WebView;->getContext()Landroid/content/Context;

    move-result-object v0

    instance-of v0, v0, Landroid/app/Activity;

    if-eqz v0, :cond_5

    .line 218
    invoke-virtual {p1}, Landroid/webkit/WebView;->getContext()Landroid/content/Context;

    move-result-object p1

    check-cast p1, Landroid/app/Activity;

    .line 223
    invoke-static {p1}, Lcom/mob/tools/utils/DeviceHelper;->getInstance(Landroid/content/Context;)Lcom/mob/tools/utils/DeviceHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mob/tools/utils/DeviceHelper;->getOSLanguage()Ljava/lang/String;

    move-result-object v0

    const-string v1, "zh"

    .line 224
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x4

    const/4 v2, 0x3

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x2

    if-eqz v0, :cond_0

    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/String;

    const/16 v6, 0xe

    new-array v7, v6, [C

    .line 225
    fill-array-data v7, :array_0

    .line 226
    invoke-static {v7}, Ljava/lang/String;->valueOf([C)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v0, v4

    const/16 v7, 0xc

    new-array v7, v7, [C

    fill-array-data v7, :array_1

    .line 227
    invoke-static {v7}, Ljava/lang/String;->valueOf([C)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v0, v3

    new-array v6, v6, [C

    fill-array-data v6, :array_2

    .line 228
    invoke-static {v6}, Ljava/lang/String;->valueOf([C)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v0, v5

    const/16 v6, 0xd

    new-array v6, v6, [C

    fill-array-data v6, :array_3

    .line 229
    invoke-static {v6}, Ljava/lang/String;->valueOf([C)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v0, v2

    const/16 v6, 0xb

    new-array v6, v6, [C

    fill-array-data v6, :array_4

    .line 230
    invoke-static {v6}, Ljava/lang/String;->valueOf([C)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v0, v1

    new-array v6, v1, [C

    .line 232
    fill-array-data v6, :array_5

    invoke-static {v6}, Ljava/lang/String;->valueOf([C)Ljava/lang/String;

    move-result-object v6

    new-array v7, v5, [C

    .line 233
    fill-array-data v7, :array_6

    invoke-static {v7}, Ljava/lang/String;->valueOf([C)Ljava/lang/String;

    move-result-object v7

    new-array v8, v5, [C

    .line 234
    fill-array-data v8, :array_7

    invoke-static {v8}, Ljava/lang/String;->valueOf([C)Ljava/lang/String;

    move-result-object v8

    goto :goto_0

    :cond_0
    const-string v0, "Certificate is untrusted. Do you want to continue anyway?"

    const-string v6, "Certificate has expired. Do you want to continue anyway?"

    const-string v7, "Certificate ID is mismatched. Do you want to continue anyway?"

    const-string v8, "Certificate is not yet valid. Do you want to continue anyway?"

    const-string v9, "Certificate error. Do you want to continue anyway?"

    .line 236
    filled-new-array {v0, v6, v7, v8, v9}, [Ljava/lang/String;

    move-result-object v0

    const-string v6, "SSL Certificate Error"

    const-string v7, "Yes"

    const-string v8, "No"

    .line 248
    :goto_0
    new-instance v9, Landroid/app/AlertDialog$Builder;

    invoke-direct {v9, p1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 249
    invoke-virtual {v9, v6}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 250
    invoke-virtual {p3}, Landroid/net/http/SslError;->getPrimaryError()I

    move-result p1

    if-eqz p1, :cond_4

    if-eq p1, v3, :cond_3

    if-eq p1, v5, :cond_2

    if-eq p1, v2, :cond_1

    .line 264
    aget-object p1, v0, v1

    invoke-virtual {v9, p1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    goto :goto_1

    .line 252
    :cond_1
    aget-object p1, v0, v4

    invoke-virtual {v9, p1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    goto :goto_1

    .line 258
    :cond_2
    aget-object p1, v0, v5

    invoke-virtual {v9, p1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    goto :goto_1

    .line 255
    :cond_3
    aget-object p1, v0, v3

    invoke-virtual {v9, p1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    goto :goto_1

    .line 261
    :cond_4
    aget-object p1, v0, v2

    invoke-virtual {v9, p1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 267
    :goto_1
    invoke-virtual {v9, v4}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 268
    new-instance p1, Lcn/sharesdk/framework/g$1;

    invoke-direct {p1, p0, p2}, Lcn/sharesdk/framework/g$1;-><init>(Lcn/sharesdk/framework/g;Landroid/webkit/SslErrorHandler;)V

    invoke-virtual {v9, v7, p1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 278
    new-instance p1, Lcn/sharesdk/framework/g$2;

    invoke-direct {p1, p0, p2}, Lcn/sharesdk/framework/g$2;-><init>(Lcn/sharesdk/framework/g;Landroid/webkit/SslErrorHandler;)V

    invoke-virtual {v9, v8, p1}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 285
    :try_start_0
    invoke-virtual {v9}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/AlertDialog;->show()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    :catchall_0
    move-exception p1

    .line 287
    invoke-static {}, Lcn/sharesdk/framework/utils/SSDKLog;->b()Lcom/mob/tools/log/NLog;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/mob/tools/log/NLog;->w(Ljava/lang/Throwable;)I

    goto :goto_2

    .line 290
    :cond_5
    invoke-virtual {p2}, Landroid/webkit/SslErrorHandler;->cancel()V

    :goto_2
    return-void

    :array_0
    .array-data 2
        0x4e0ds
        0x53d7s
        0x4fe1s
        0x4efbs
        0x7684s
        -0x743fs
        0x4e66s
        0x3002s
        0x4f60s
        -0x767fs
        0x7ee7s
        0x7eeds
        0x5417s
        -0xe1s
    .end array-data

    :array_1
    .array-data 2
        -0x743fs
        0x4e66s
        0x5df2s
        -0x7039s
        0x671fs
        0x3002s
        0x4f60s
        -0x767fs
        0x7ee7s
        0x7eeds
        0x5417s
        -0xe1s
    .end array-data

    :array_2
    .array-data 2
        -0x743fs
        0x4e66s
        0x49s
        0x44s
        0x4e0ds
        0x5339s
        -0x6eb3s
        0x3002s
        0x4f60s
        -0x767fs
        0x7ee7s
        0x7eeds
        0x5417s
        -0xe1s
    .end array-data

    :array_3
    .array-data 2
        -0x743fs
        0x4e66s
        0x5c1as
        0x672as
        0x751fs
        0x6548s
        0x3002s
        0x4f60s
        -0x767fs
        0x7ee7s
        0x7eeds
        0x5417s
        -0xe1s
    .end array-data

    nop

    :array_4
    .array-data 2
        -0x743fs
        0x4e66s
        -0x6ae7s
        -0x7411s
        0x3002s
        0x4f60s
        -0x767fs
        0x7ee7s
        0x7eeds
        0x5417s
        -0xe1s
    .end array-data

    nop

    :array_5
    .array-data 2
        -0x743fs
        0x4e66s
        -0x6ae7s
        -0x7411s
    .end array-data

    :array_6
    .array-data 2
        0x7ee7s
        0x7eeds
    .end array-data

    :array_7
    .array-data 2
        0x505cs
        0x6b62s
    .end array-data
.end method

.method public onScaleChanged(Landroid/webkit/WebView;FF)V
    .locals 0

    return-void
.end method

.method public onTooManyRedirects(Landroid/webkit/WebView;Landroid/os/Message;Landroid/os/Message;)V
    .locals 0

    .line 150
    invoke-virtual {p2}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public onUnhandledKeyEvent(Landroid/webkit/WebView;Landroid/view/KeyEvent;)V
    .locals 0

    return-void
.end method

.method public shouldOverrideKeyEvent(Landroid/webkit/WebView;Landroid/view/KeyEvent;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method
