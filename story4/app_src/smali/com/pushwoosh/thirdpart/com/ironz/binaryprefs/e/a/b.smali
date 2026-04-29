.class public final Lcom/pushwoosh/thirdpart/com/ironz/binaryprefs/e/a/b;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/pushwoosh/thirdpart/com/ironz/binaryprefs/e/a/a;


# static fields
.field private static final a:[Ljava/lang/String;


# instance fields
.field private final b:Ljava/io/File;

.field private final c:Ljava/io/File;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/String;

    sput-object v0, Lcom/pushwoosh/thirdpart/com/ironz/binaryprefs/e/a/b;->a:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/pushwoosh/thirdpart/com/ironz/binaryprefs/e/b/b;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-interface {p1}, Lcom/pushwoosh/thirdpart/com/ironz/binaryprefs/e/b/b;->a()Ljava/io/File;

    move-result-object v0

    iput-object v0, p0, Lcom/pushwoosh/thirdpart/com/ironz/binaryprefs/e/a/b;->b:Ljava/io/File;

    invoke-interface {p1}, Lcom/pushwoosh/thirdpart/com/ironz/binaryprefs/e/b/b;->b()Ljava/io/File;

    move-result-object p1

    iput-object p1, p0, Lcom/pushwoosh/thirdpart/com/ironz/binaryprefs/e/a/b;->c:Ljava/io/File;

    return-void
.end method

.method private a(Ljava/io/File;Ljava/io/File;)V
    .locals 1

    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p2}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p2}, Ljava/io/File;->delete()Z

    :cond_1
    invoke-virtual {p1, p2}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    return-void
.end method

.method private a(Ljava/io/File;[B)V
    .locals 10

    const/4 v0, 0x0

    :try_start_0
    new-instance v1, Ljava/io/RandomAccessFile;

    const-string v2, "rw"

    invoke-direct {v1, p1, v2}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_3
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    const-wide/16 v2, 0x0

    :try_start_1
    invoke-virtual {v1, v2, v3}, Ljava/io/RandomAccessFile;->setLength(J)V

    invoke-virtual {v1}, Ljava/io/RandomAccessFile;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object p1
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    :try_start_2
    sget-object v5, Ljava/nio/channels/FileChannel$MapMode;->READ_WRITE:Ljava/nio/channels/FileChannel$MapMode;

    const-wide/16 v6, 0x0

    array-length v0, p2

    int-to-long v8, v0

    move-object v4, p1

    invoke-virtual/range {v4 .. v9}, Ljava/nio/channels/FileChannel;->map(Ljava/nio/channels/FileChannel$MapMode;JJ)Ljava/nio/MappedByteBuffer;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/nio/MappedByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    invoke-virtual {p1, v0}, Ljava/nio/channels/FileChannel;->write(Ljava/nio/ByteBuffer;)I

    invoke-virtual {v0}, Ljava/nio/MappedByteBuffer;->force()Ljava/nio/MappedByteBuffer;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    invoke-virtual {v1}, Ljava/io/RandomAccessFile;->close()V

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/nio/channels/FileChannel;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    :catch_0
    :cond_0
    return-void

    :catchall_0
    move-exception p2

    move-object v0, p1

    goto :goto_1

    :catch_1
    move-exception p2

    move-object v0, p1

    goto :goto_0

    :catch_2
    move-exception p2

    goto :goto_0

    :catchall_1
    move-exception p2

    move-object v1, v0

    goto :goto_1

    :catch_3
    move-exception p2

    move-object v1, v0

    :goto_0
    :try_start_4
    new-instance p1, Lcom/pushwoosh/thirdpart/com/ironz/binaryprefs/d/a;

    invoke-direct {p1, p2}, Lcom/pushwoosh/thirdpart/com/ironz/binaryprefs/d/a;-><init>(Ljava/lang/Throwable;)V

    throw p1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    :catchall_2
    move-exception p2

    :goto_1
    if-eqz v1, :cond_1

    :try_start_5
    invoke-virtual {v1}, Ljava/io/RandomAccessFile;->close()V

    :cond_1
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/nio/channels/FileChannel;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_4

    :catch_4
    :cond_2
    throw p2
.end method

.method private a(Ljava/io/File;)[B
    .locals 10

    const/4 v0, 0x0

    :try_start_0
    new-instance v1, Ljava/io/RandomAccessFile;

    const-string v2, "r"

    invoke-direct {v1, p1, v2}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_3
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    invoke-virtual {v1}, Ljava/io/RandomAccessFile;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object p1
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    invoke-virtual {v1}, Ljava/io/RandomAccessFile;->length()J

    move-result-wide v2

    long-to-int v0, v2

    sget-object v4, Ljava/nio/channels/FileChannel$MapMode;->READ_ONLY:Ljava/nio/channels/FileChannel$MapMode;

    const-wide/16 v5, 0x0

    int-to-long v7, v0

    move-object v3, p1

    invoke-virtual/range {v3 .. v8}, Ljava/nio/channels/FileChannel;->map(Ljava/nio/channels/FileChannel$MapMode;JJ)Ljava/nio/MappedByteBuffer;

    move-result-object v2

    new-array v0, v0, [B

    invoke-virtual {v2, v0}, Ljava/nio/MappedByteBuffer;->get([B)Ljava/nio/ByteBuffer;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    :try_start_3
    invoke-virtual {v1}, Ljava/io/RandomAccessFile;->close()V

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/nio/channels/FileChannel;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    :catch_0
    :cond_0
    return-object v0

    :catch_1
    move-exception v0

    goto :goto_0

    :catchall_0
    move-exception p1

    move-object v9, v0

    move-object v0, p1

    move-object p1, v9

    goto :goto_1

    :catch_2
    move-exception p1

    move-object v9, v0

    move-object v0, p1

    move-object p1, v9

    goto :goto_0

    :catchall_1
    move-exception p1

    move-object v1, v0

    move-object v0, p1

    move-object p1, v1

    goto :goto_1

    :catch_3
    move-exception p1

    move-object v1, v0

    move-object v0, p1

    move-object p1, v1

    :goto_0
    :try_start_4
    new-instance v2, Lcom/pushwoosh/thirdpart/com/ironz/binaryprefs/d/a;

    invoke-direct {v2, v0}, Lcom/pushwoosh/thirdpart/com/ironz/binaryprefs/d/a;-><init>(Ljava/lang/Throwable;)V

    throw v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    :catchall_2
    move-exception v0

    :goto_1
    if-eqz v1, :cond_1

    :try_start_5
    invoke-virtual {v1}, Ljava/io/RandomAccessFile;->close()V

    :cond_1
    if-eqz p1, :cond_2

    invoke-virtual {p1}, Ljava/nio/channels/FileChannel;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_4

    :catch_4
    :cond_2
    throw v0
.end method

.method private b(Ljava/io/File;)V
    .locals 1

    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p1}, Ljava/io/File;->delete()Z

    return-void
.end method

.method private b(Ljava/lang/String;[B)V
    .locals 4

    array-length v0, p2

    if-eqz v0, :cond_0

    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/pushwoosh/thirdpart/com/ironz/binaryprefs/e/a/b;->b:Ljava/io/File;

    invoke-direct {v0, v1, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    new-instance v1, Ljava/io/File;

    iget-object v2, p0, Lcom/pushwoosh/thirdpart/com/ironz/binaryprefs/e/a/b;->c:Ljava/io/File;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ".bak"

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, v2, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-direct {p0, v0, v1}, Lcom/pushwoosh/thirdpart/com/ironz/binaryprefs/e/a/b;->a(Ljava/io/File;Ljava/io/File;)V

    invoke-direct {p0, v0, p2}, Lcom/pushwoosh/thirdpart/com/ironz/binaryprefs/e/a/b;->a(Ljava/io/File;[B)V

    invoke-direct {p0, v1}, Lcom/pushwoosh/thirdpart/com/ironz/binaryprefs/e/a/b;->b(Ljava/io/File;)V

    return-void

    :cond_0
    new-instance p2, Lcom/pushwoosh/thirdpart/com/ironz/binaryprefs/d/a;

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const-string p1, "%s key\'s value is zero bytes for saving"

    invoke-static {p1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Lcom/pushwoosh/thirdpart/com/ironz/binaryprefs/d/a;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method private b()[Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/pushwoosh/thirdpart/com/ironz/binaryprefs/e/a/b;->b:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/pushwoosh/thirdpart/com/ironz/binaryprefs/e/a/b;->a:[Ljava/lang/String;

    :cond_0
    return-object v0
.end method

.method private c(Ljava/lang/String;)[B
    .locals 4

    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/pushwoosh/thirdpart/com/ironz/binaryprefs/e/a/b;->c:Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ".bak"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    new-instance v1, Ljava/io/File;

    iget-object v2, p0, Lcom/pushwoosh/thirdpart/com/ironz/binaryprefs/e/a/b;->b:Ljava/io/File;

    invoke-direct {v1, v2, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-direct {p0, v1}, Lcom/pushwoosh/thirdpart/com/ironz/binaryprefs/e/a/b;->b(Ljava/io/File;)V

    invoke-direct {p0, v0, v1}, Lcom/pushwoosh/thirdpart/com/ironz/binaryprefs/e/a/b;->a(Ljava/io/File;Ljava/io/File;)V

    :cond_0
    invoke-direct {p0, v1}, Lcom/pushwoosh/thirdpart/com/ironz/binaryprefs/e/a/b;->a(Ljava/io/File;)[B

    move-result-object p1

    return-object p1
.end method

.method private d(Ljava/lang/String;)V
    .locals 2

    :try_start_0
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/pushwoosh/thirdpart/com/ironz/binaryprefs/e/a/b;->b:Ljava/io/File;

    invoke-direct {v0, v1, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result p1

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-virtual {v0}, Ljava/io/File;->delete()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    new-instance v0, Lcom/pushwoosh/thirdpart/com/ironz/binaryprefs/d/a;

    invoke-direct {v0, p1}, Lcom/pushwoosh/thirdpart/com/ironz/binaryprefs/d/a;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method


# virtual methods
.method public a(Ljava/lang/String;[B)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/pushwoosh/thirdpart/com/ironz/binaryprefs/e/a/b;->b(Ljava/lang/String;[B)V

    return-void
.end method

.method public a(Ljava/lang/String;)[B
    .locals 0

    invoke-direct {p0, p1}, Lcom/pushwoosh/thirdpart/com/ironz/binaryprefs/e/a/b;->c(Ljava/lang/String;)[B

    move-result-object p1

    return-object p1
.end method

.method public a()[Ljava/lang/String;
    .locals 1

    invoke-direct {p0}, Lcom/pushwoosh/thirdpart/com/ironz/binaryprefs/e/a/b;->b()[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public b(Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/pushwoosh/thirdpart/com/ironz/binaryprefs/e/a/b;->d(Ljava/lang/String;)V

    return-void
.end method
