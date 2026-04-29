.class public final Lcom/pushwoosh/thirdpart/com/ironz/binaryprefs/e/c/c;
.super Ljava/lang/Object;


# static fields
.field private static final a:[B


# instance fields
.field private final b:I

.field private final c:Ljava/lang/String;

.field private final d:[B


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    new-array v0, v0, [B

    sput-object v0, Lcom/pushwoosh/thirdpart/com/ironz/binaryprefs/e/c/c;->a:[B

    return-void
.end method

.method private constructor <init>(ILjava/lang/String;[B)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/pushwoosh/thirdpart/com/ironz/binaryprefs/e/c/c;->b:I

    iput-object p2, p0, Lcom/pushwoosh/thirdpart/com/ironz/binaryprefs/e/c/c;->c:Ljava/lang/String;

    iput-object p3, p0, Lcom/pushwoosh/thirdpart/com/ironz/binaryprefs/e/c/c;->d:[B

    return-void
.end method

.method public static a(Ljava/lang/String;)Lcom/pushwoosh/thirdpart/com/ironz/binaryprefs/e/c/c;
    .locals 3

    new-instance v0, Lcom/pushwoosh/thirdpart/com/ironz/binaryprefs/e/c/c;

    sget-object v1, Lcom/pushwoosh/thirdpart/com/ironz/binaryprefs/e/c/c;->a:[B

    const/4 v2, 0x3

    invoke-direct {v0, v2, p0, v1}, Lcom/pushwoosh/thirdpart/com/ironz/binaryprefs/e/c/c;-><init>(ILjava/lang/String;[B)V

    return-object v0
.end method

.method static a(Ljava/lang/String;[B)Lcom/pushwoosh/thirdpart/com/ironz/binaryprefs/e/c/c;
    .locals 2

    new-instance v0, Lcom/pushwoosh/thirdpart/com/ironz/binaryprefs/e/c/c;

    const/4 v1, 0x1

    invoke-direct {v0, v1, p0, p1}, Lcom/pushwoosh/thirdpart/com/ironz/binaryprefs/e/c/c;-><init>(ILjava/lang/String;[B)V

    return-object v0
.end method

.method public static b(Ljava/lang/String;[B)Lcom/pushwoosh/thirdpart/com/ironz/binaryprefs/e/c/c;
    .locals 2

    new-instance v0, Lcom/pushwoosh/thirdpart/com/ironz/binaryprefs/e/c/c;

    const/4 v1, 0x2

    invoke-direct {v0, v1, p0, p1}, Lcom/pushwoosh/thirdpart/com/ironz/binaryprefs/e/c/c;-><init>(ILjava/lang/String;[B)V

    return-object v0
.end method


# virtual methods
.method public a()I
    .locals 1

    iget v0, p0, Lcom/pushwoosh/thirdpart/com/ironz/binaryprefs/e/c/c;->b:I

    return v0
.end method

.method public b()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/pushwoosh/thirdpart/com/ironz/binaryprefs/e/c/c;->c:Ljava/lang/String;

    return-object v0
.end method

.method public c()[B
    .locals 1

    iget-object v0, p0, Lcom/pushwoosh/thirdpart/com/ironz/binaryprefs/e/c/c;->d:[B

    return-object v0
.end method
