.class public final Landroidx/navigation/dynamicfeatures/Constants;
.super Ljava/lang/Object;
.source "Constants.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u0003\u0008\u00c7\u0002\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002R\u000e\u0010\u0003\u001a\u00020\u0004X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0005\u001a\u00020\u0004X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0004X\u0086T\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0007"
    }
    d2 = {
        "Landroidx/navigation/dynamicfeatures/Constants;",
        "",
        "()V",
        "DESTINATION_ARGS",
        "",
        "DESTINATION_ID",
        "KEY_NAVIGATED",
        "navigation-dynamic-features-runtime_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x1,
        0x10
    }
.end annotation


# static fields
.field public static final DESTINATION_ARGS:Ljava/lang/String; = "dfn:destinationArgs"

.field public static final DESTINATION_ID:Ljava/lang/String; = "dfn:destinationId"

.field public static final INSTANCE:Landroidx/navigation/dynamicfeatures/Constants;

.field public static final KEY_NAVIGATED:Ljava/lang/String; = "dfn:navigated"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 27
    new-instance v0, Landroidx/navigation/dynamicfeatures/Constants;

    invoke-direct {v0}, Landroidx/navigation/dynamicfeatures/Constants;-><init>()V

    sput-object v0, Landroidx/navigation/dynamicfeatures/Constants;->INSTANCE:Landroidx/navigation/dynamicfeatures/Constants;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
