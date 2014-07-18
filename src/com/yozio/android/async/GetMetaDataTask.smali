.class public Lcom/yozio/android/async/GetMetaDataTask;
.super Ljava/lang/Object;
.source "GetMetaDataTask.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final _callback:Lcom/yozio/android/interfaces/GetMetaDataCallback;


# direct methods
.method public constructor <init>(Lcom/yozio/android/interfaces/GetMetaDataCallback;)V
    .registers 2
    .param p1, "callback"    # Lcom/yozio/android/interfaces/GetMetaDataCallback;

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    iput-object p1, p0, Lcom/yozio/android/async/GetMetaDataTask;->_callback:Lcom/yozio/android/interfaces/GetMetaDataCallback;

    .line 14
    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .prologue
    .line 18
    invoke-static {}, Lcom/yozio/android/helpers/Api;->getInstance()Lcom/yozio/android/helpers/Api;

    move-result-object v1

    invoke-virtual {v1}, Lcom/yozio/android/helpers/Api;->getMetaData()Ljava/util/HashMap;

    move-result-object v0

    .line 20
    .local v0, "metadata":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    iget-object v1, p0, Lcom/yozio/android/async/GetMetaDataTask;->_callback:Lcom/yozio/android/interfaces/GetMetaDataCallback;

    if-eqz v1, :cond_11

    .line 21
    iget-object v1, p0, Lcom/yozio/android/async/GetMetaDataTask;->_callback:Lcom/yozio/android/interfaces/GetMetaDataCallback;

    invoke-interface {v1, v0}, Lcom/yozio/android/interfaces/GetMetaDataCallback;->handleMetaData(Ljava/util/HashMap;)V

    .line 22
    :cond_11
    return-void
.end method
