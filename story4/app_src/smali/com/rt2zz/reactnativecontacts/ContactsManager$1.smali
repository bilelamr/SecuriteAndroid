.class Lcom/rt2zz/reactnativecontacts/ContactsManager$1;
.super Landroid/os/AsyncTask;
.source "ContactsManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/rt2zz/reactnativecontacts/ContactsManager;->getAllContacts(Lcom/facebook/react/bridge/Callback;)V
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


# direct methods
.method constructor <init>(Lcom/rt2zz/reactnativecontacts/ContactsManager;Lcom/facebook/react/bridge/Callback;)V
    .locals 0

    .line 94
    iput-object p1, p0, Lcom/rt2zz/reactnativecontacts/ContactsManager$1;->this$0:Lcom/rt2zz/reactnativecontacts/ContactsManager;

    iput-object p2, p0, Lcom/rt2zz/reactnativecontacts/ContactsManager$1;->val$callback:Lcom/facebook/react/bridge/Callback;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 94
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/rt2zz/reactnativecontacts/ContactsManager$1;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object p1

    return-object p1
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 4

    .line 97
    iget-object p1, p0, Lcom/rt2zz/reactnativecontacts/ContactsManager$1;->this$0:Lcom/rt2zz/reactnativecontacts/ContactsManager;

    invoke-static {p1}, Lcom/rt2zz/reactnativecontacts/ContactsManager;->access$000(Lcom/rt2zz/reactnativecontacts/ContactsManager;)Lcom/facebook/react/bridge/ReactApplicationContext;

    move-result-object p1

    .line 98
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    .line 100
    new-instance v0, Lcom/rt2zz/reactnativecontacts/ContactsProvider;

    invoke-direct {v0, p1}, Lcom/rt2zz/reactnativecontacts/ContactsProvider;-><init>(Landroid/content/ContentResolver;)V

    .line 101
    invoke-virtual {v0}, Lcom/rt2zz/reactnativecontacts/ContactsProvider;->getContacts()Lcom/facebook/react/bridge/WritableArray;

    move-result-object p1

    .line 103
    iget-object v0, p0, Lcom/rt2zz/reactnativecontacts/ContactsManager$1;->val$callback:Lcom/facebook/react/bridge/Callback;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const/4 v3, 0x1

    aput-object p1, v1, v3

    invoke-interface {v0, v1}, Lcom/facebook/react/bridge/Callback;->invoke([Ljava/lang/Object;)V

    return-object v2
.end method
