.class Lorg/apache/mina/util/byteaccess/CompositeByteArrayRelativeBase$1;
.super Ljava/lang/Object;
.source "CompositeByteArrayRelativeBase.java"

# interfaces
.implements Lorg/apache/mina/util/byteaccess/CompositeByteArray$CursorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/apache/mina/util/byteaccess/CompositeByteArrayRelativeBase;-><init>(Lorg/apache/mina/util/byteaccess/CompositeByteArray;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field final synthetic this$0:Lorg/apache/mina/util/byteaccess/CompositeByteArrayRelativeBase;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 57
    const-class v0, Lorg/apache/mina/util/byteaccess/CompositeByteArrayRelativeBase;

    return-void
.end method

.method constructor <init>(Lorg/apache/mina/util/byteaccess/CompositeByteArrayRelativeBase;)V
    .locals 0

    .line 57
    iput-object p1, p0, Lorg/apache/mina/util/byteaccess/CompositeByteArrayRelativeBase$1;->this$0:Lorg/apache/mina/util/byteaccess/CompositeByteArrayRelativeBase;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public enteredFirstComponent(ILorg/apache/mina/util/byteaccess/ByteArray;)V
    .locals 0

    return-void
.end method

.method public enteredLastComponent(ILorg/apache/mina/util/byteaccess/ByteArray;)V
    .locals 0

    return-void
.end method

.method public enteredNextComponent(ILorg/apache/mina/util/byteaccess/ByteArray;)V
    .locals 0

    .line 68
    iget-object p1, p0, Lorg/apache/mina/util/byteaccess/CompositeByteArrayRelativeBase$1;->this$0:Lorg/apache/mina/util/byteaccess/CompositeByteArrayRelativeBase;

    invoke-virtual {p1}, Lorg/apache/mina/util/byteaccess/CompositeByteArrayRelativeBase;->cursorPassedFirstComponent()V

    return-void
.end method

.method public enteredPreviousComponent(ILorg/apache/mina/util/byteaccess/ByteArray;)V
    .locals 0

    return-void
.end method
