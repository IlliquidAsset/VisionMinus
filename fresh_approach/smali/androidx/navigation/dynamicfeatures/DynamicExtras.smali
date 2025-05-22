.class public final Landroidx/navigation/dynamicfeatures/DynamicExtras;
.super Ljava/lang/Object;
.source "DynamicExtras.kt"

# interfaces
.implements Landroidx/navigation/Navigator$Extras;


# annotations
.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0007\u0018\u00002\u00020\u0001B\u001f\u0008\u0007\u0012\n\u0008\u0002\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u0012\n\u0008\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u0001\u00a2\u0006\u0002\u0010\u0005R\u0013\u0010\u0004\u001a\u0004\u0018\u00010\u0001\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0006\u0010\u0007R\u0013\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0008\u0010\t\u00a8\u0006\n"
    }
    d2 = {
        "Landroidx/navigation/dynamicfeatures/DynamicExtras;",
        "Landroidx/navigation/Navigator$Extras;",
        "installMonitor",
        "Landroidx/navigation/dynamicfeatures/DynamicInstallMonitor;",
        "destinationExtras",
        "(Landroidx/navigation/dynamicfeatures/DynamicInstallMonitor;Landroidx/navigation/Navigator$Extras;)V",
        "getDestinationExtras",
        "()Landroidx/navigation/Navigator$Extras;",
        "getInstallMonitor",
        "()Landroidx/navigation/dynamicfeatures/DynamicInstallMonitor;",
        "navigation-dynamic-features-runtime_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x1,
        0x10
    }
.end annotation


# instance fields
.field private final destinationExtras:Landroidx/navigation/Navigator$Extras;

.field private final installMonitor:Landroidx/navigation/dynamicfeatures/DynamicInstallMonitor;


# direct methods
.method public constructor <init>()V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x3

    invoke-direct {p0, v0, v0, v1, v0}, Landroidx/navigation/dynamicfeatures/DynamicExtras;-><init>(Landroidx/navigation/dynamicfeatures/DynamicInstallMonitor;Landroidx/navigation/Navigator$Extras;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Landroidx/navigation/dynamicfeatures/DynamicInstallMonitor;)V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x2

    invoke-direct {p0, p1, v0, v1, v0}, Landroidx/navigation/dynamicfeatures/DynamicExtras;-><init>(Landroidx/navigation/dynamicfeatures/DynamicInstallMonitor;Landroidx/navigation/Navigator$Extras;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Landroidx/navigation/dynamicfeatures/DynamicInstallMonitor;Landroidx/navigation/Navigator$Extras;)V
    .locals 0

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/navigation/dynamicfeatures/DynamicExtras;->installMonitor:Landroidx/navigation/dynamicfeatures/DynamicInstallMonitor;

    iput-object p2, p0, Landroidx/navigation/dynamicfeatures/DynamicExtras;->destinationExtras:Landroidx/navigation/Navigator$Extras;

    return-void
.end method

.method public synthetic constructor <init>(Landroidx/navigation/dynamicfeatures/DynamicInstallMonitor;Landroidx/navigation/Navigator$Extras;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 1

    and-int/lit8 p4, p3, 0x1

    const/4 v0, 0x0

    if-eqz p4, :cond_0

    .line 31
    move-object p1, v0

    check-cast p1, Landroidx/navigation/dynamicfeatures/DynamicInstallMonitor;

    :cond_0
    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_1

    .line 35
    move-object p2, v0

    check-cast p2, Landroidx/navigation/Navigator$Extras;

    :cond_1
    invoke-direct {p0, p1, p2}, Landroidx/navigation/dynamicfeatures/DynamicExtras;-><init>(Landroidx/navigation/dynamicfeatures/DynamicInstallMonitor;Landroidx/navigation/Navigator$Extras;)V

    return-void
.end method


# virtual methods
.method public final getDestinationExtras()Landroidx/navigation/Navigator$Extras;
    .locals 1

    .line 35
    iget-object v0, p0, Landroidx/navigation/dynamicfeatures/DynamicExtras;->destinationExtras:Landroidx/navigation/Navigator$Extras;

    return-object v0
.end method

.method public final getInstallMonitor()Landroidx/navigation/dynamicfeatures/DynamicInstallMonitor;
    .locals 1

    .line 31
    iget-object v0, p0, Landroidx/navigation/dynamicfeatures/DynamicExtras;->installMonitor:Landroidx/navigation/dynamicfeatures/DynamicInstallMonitor;

    return-object v0
.end method
