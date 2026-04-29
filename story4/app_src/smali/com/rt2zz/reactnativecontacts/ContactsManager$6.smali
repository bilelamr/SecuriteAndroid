.class Lcom/rt2zz/reactnativecontacts/ContactsManager$6;
.super Landroid/os/AsyncTask;
.source "ContactsManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/rt2zz/reactnativecontacts/ContactsManager;->writePhotoToPath(Ljava/lang/String;Ljava/lang/String;Lcom/facebook/react/bridge/Callback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/rt2zz/reactnativecontacts/ContactsManager;

.field final synthetic val$callback:Lcom/facebook/react/bridge/Callback;

.field final synthetic val$contactId:Ljava/lang/String;

.field final synthetic val$file:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/rt2zz/reactnativecontacts/ContactsManager;Ljava/lang/String;Ljava/lang/String;Lcom/facebook/react/bridge/Callback;)V
    .locals 0

    .line 206
    iput-object p1, p0, Lcom/rt2zz/reactnativecontacts/ContactsManager$6;->this$0:Lcom/rt2zz/reactnativecontacts/ContactsManager;

    iput-object p2, p0, Lcom/rt2zz/reactnativecontacts/ContactsManager$6;->val$contactId:Ljava/lang/String;

    iput-object p3, p0, Lcom/rt2zz/reactnativecontacts/ContactsManager$6;->val$file:Ljava/lang/String;

    iput-object p4, p0, Lcom/rt2zz/reactnativecontacts/ContactsManager$6;->val$callback:Lcom/facebook/react/bridge/Callback;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 206
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/rt2zz/reactnativecontacts/ContactsManager$6;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object p1

    return-object p1
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 7

    .line 209
    iget-object p1, p0, Lcom/rt2zz/reactnativecontacts/ContactsManager$6;->this$0:Lcom/rt2zz/reactnativecontacts/ContactsManager;

    invoke-static {p1}, Lcom/rt2zz/reactnativecontacts/ContactsManager;->access$500(Lcom/rt2zz/reactnativecontacts/ContactsManager;)Lcom/facebook/react/bridge/ReactApplicationContext;

    move-result-object p1

    .line 210
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    .line 212
    sget-object v0, Landroid/provider/ContactsContract$Contacts;->CONTENT_URI:Landroid/net/Uri;

    iget-object v1, p0, Lcom/rt2zz/reactnativecontacts/ContactsManager$6;->val$contactId:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v1

    invoke-static {v0, v1, v2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v0

    .line 213
    invoke-static {p1, v0}, Landroid/provider/ContactsContract$Contacts;->openContactPhotoInputStream(Landroid/content/ContentResolver;Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object p1

    const/4 v0, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 216
    :try_start_0
    new-instance v3, Ljava/io/FileOutputStream;

    iget-object v4, p0, Lcom/rt2zz/reactnativecontacts/ContactsManager$6;->val$file:Ljava/lang/String;

    invoke-direct {v3, v4}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 217
    :try_start_1
    invoke-static {p1}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object v4

    sget-object v5, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v6, 0x64

    invoke-virtual {v4, v5, v6, v3}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 218
    iget-object v4, p0, Lcom/rt2zz/reactnativecontacts/ContactsManager$6;->val$callback:Lcom/facebook/react/bridge/Callback;

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    aput-object v2, v5, v0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    aput-object v6, v5, v1

    invoke-interface {v4, v5}, Lcom/facebook/react/bridge/Callback;->invoke([Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 223
    :try_start_2
    invoke-virtual {v3}, Ljava/io/OutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_1

    :catch_0
    move-exception v4

    goto :goto_0

    :catchall_0
    move-exception p1

    move-object v3, v2

    goto :goto_3

    :catch_1
    move-exception v4

    move-object v3, v2

    .line 220
    :goto_0
    :try_start_3
    iget-object v5, p0, Lcom/rt2zz/reactnativecontacts/ContactsManager$6;->val$callback:Lcom/facebook/react/bridge/Callback;

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {v4}, Ljava/io/FileNotFoundException;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v1, v0

    invoke-interface {v5, v1}, Lcom/facebook/react/bridge/Callback;->invoke([Ljava/lang/Object;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 223
    :try_start_4
    invoke-virtual {v3}, Ljava/io/OutputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_1

    :catch_2
    move-exception v0

    .line 225
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 229
    :goto_1
    :try_start_5
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    goto :goto_2

    :catch_3
    move-exception p1

    .line 231
    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    :goto_2
    return-object v2

    :catchall_1
    move-exception p1

    .line 223
    :goto_3
    :try_start_6
    invoke-virtual {v3}, Ljava/io/OutputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_4

    goto :goto_4

    :catch_4
    move-exception v0

    .line 225
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 227
    :goto_4
    throw p1
.end method
