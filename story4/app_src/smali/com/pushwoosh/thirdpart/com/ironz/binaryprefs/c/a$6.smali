.class Lcom/pushwoosh/thirdpart/com/ironz/binaryprefs/c/a$6;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/pushwoosh/thirdpart/com/ironz/binaryprefs/c/a;->e(Ljava/lang/String;[B)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:[B

.field final synthetic c:Lcom/pushwoosh/thirdpart/com/ironz/binaryprefs/c/a;


# direct methods
.method constructor <init>(Lcom/pushwoosh/thirdpart/com/ironz/binaryprefs/c/a;Ljava/lang/String;[B)V
    .locals 0

    iput-object p1, p0, Lcom/pushwoosh/thirdpart/com/ironz/binaryprefs/c/a$6;->c:Lcom/pushwoosh/thirdpart/com/ironz/binaryprefs/c/a;

    iput-object p2, p0, Lcom/pushwoosh/thirdpart/com/ironz/binaryprefs/c/a$6;->a:Ljava/lang/String;

    iput-object p3, p0, Lcom/pushwoosh/thirdpart/com/ironz/binaryprefs/c/a$6;->b:[B

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lcom/pushwoosh/thirdpart/com/ironz/binaryprefs/c/a$6;->c:Lcom/pushwoosh/thirdpart/com/ironz/binaryprefs/c/a;

    iget-object v1, p0, Lcom/pushwoosh/thirdpart/com/ironz/binaryprefs/c/a$6;->a:Ljava/lang/String;

    iget-object v2, p0, Lcom/pushwoosh/thirdpart/com/ironz/binaryprefs/c/a$6;->b:[B

    invoke-static {v0, v1, v2}, Lcom/pushwoosh/thirdpart/com/ironz/binaryprefs/c/a;->b(Lcom/pushwoosh/thirdpart/com/ironz/binaryprefs/c/a;Ljava/lang/String;[B)V

    return-void
.end method
