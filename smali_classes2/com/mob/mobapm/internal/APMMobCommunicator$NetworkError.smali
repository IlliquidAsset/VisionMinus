.class public Lcom/mob/mobapm/internal/APMMobCommunicator$NetworkError;
.super Ljava/lang/Exception;
.source "SourceFile"

# interfaces
.implements Lcom/mob/tools/proguard/PublicMemberKeeper;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mob/mobapm/internal/APMMobCommunicator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "NetworkError"
.end annotation


# static fields
.field private static final serialVersionUID:J = -0x753c1bad2fee9493L


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    return-void
.end method
