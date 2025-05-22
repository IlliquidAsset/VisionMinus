.class public final Lcn/sharesdk/framework/utils/QRCodeUtil/FormatException;
.super Lcn/sharesdk/framework/utils/QRCodeUtil/ReaderException;
.source "FormatException.java"


# static fields
.field private static final INSTANCE:Lcn/sharesdk/framework/utils/QRCodeUtil/FormatException;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 12
    new-instance v0, Lcn/sharesdk/framework/utils/QRCodeUtil/FormatException;

    invoke-direct {v0}, Lcn/sharesdk/framework/utils/QRCodeUtil/FormatException;-><init>()V

    sput-object v0, Lcn/sharesdk/framework/utils/QRCodeUtil/FormatException;->INSTANCE:Lcn/sharesdk/framework/utils/QRCodeUtil/FormatException;

    .line 14
    sget-object v1, Lcn/sharesdk/framework/utils/QRCodeUtil/FormatException;->NO_TRACE:[Ljava/lang/StackTraceElement;

    invoke-virtual {v0, v1}, Lcn/sharesdk/framework/utils/QRCodeUtil/FormatException;->setStackTrace([Ljava/lang/StackTraceElement;)V

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 17
    invoke-direct {p0}, Lcn/sharesdk/framework/utils/QRCodeUtil/ReaderException;-><init>()V

    return-void
.end method

.method private constructor <init>(Ljava/lang/Throwable;)V
    .locals 0

    .line 21
    invoke-direct {p0, p1}, Lcn/sharesdk/framework/utils/QRCodeUtil/ReaderException;-><init>(Ljava/lang/Throwable;)V

    return-void
.end method

.method public static getFormatInstance()Lcn/sharesdk/framework/utils/QRCodeUtil/FormatException;
    .locals 1

    .line 25
    sget-boolean v0, Lcn/sharesdk/framework/utils/QRCodeUtil/FormatException;->isStackTrace:Z

    if-eqz v0, :cond_0

    new-instance v0, Lcn/sharesdk/framework/utils/QRCodeUtil/FormatException;

    invoke-direct {v0}, Lcn/sharesdk/framework/utils/QRCodeUtil/FormatException;-><init>()V

    goto :goto_0

    :cond_0
    sget-object v0, Lcn/sharesdk/framework/utils/QRCodeUtil/FormatException;->INSTANCE:Lcn/sharesdk/framework/utils/QRCodeUtil/FormatException;

    :goto_0
    return-object v0
.end method

.method public static getFormatInstance(Ljava/lang/Throwable;)Lcn/sharesdk/framework/utils/QRCodeUtil/FormatException;
    .locals 1

    .line 29
    sget-boolean v0, Lcn/sharesdk/framework/utils/QRCodeUtil/FormatException;->isStackTrace:Z

    if-eqz v0, :cond_0

    new-instance v0, Lcn/sharesdk/framework/utils/QRCodeUtil/FormatException;

    invoke-direct {v0, p0}, Lcn/sharesdk/framework/utils/QRCodeUtil/FormatException;-><init>(Ljava/lang/Throwable;)V

    goto :goto_0

    :cond_0
    sget-object v0, Lcn/sharesdk/framework/utils/QRCodeUtil/FormatException;->INSTANCE:Lcn/sharesdk/framework/utils/QRCodeUtil/FormatException;

    :goto_0
    return-object v0
.end method
