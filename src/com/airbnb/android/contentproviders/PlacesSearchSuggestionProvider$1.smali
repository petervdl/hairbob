.class Lcom/airbnb/android/contentproviders/PlacesSearchSuggestionProvider$1;
.super Ljava/lang/Object;
.source "PlacesSearchSuggestionProvider.java"

# interfaces
.implements Lcom/airbnb/android/requests/RequestListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/airbnb/android/contentproviders/PlacesSearchSuggestionProvider;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/airbnb/android/requests/RequestListener",
        "<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/airbnb/android/contentproviders/PlacesSearchSuggestionProvider;


# direct methods
.method constructor <init>(Lcom/airbnb/android/contentproviders/PlacesSearchSuggestionProvider;)V
    .registers 2

    .prologue
    .line 179
    iput-object p1, p0, Lcom/airbnb/android/contentproviders/PlacesSearchSuggestionProvider$1;->this$0:Lcom/airbnb/android/contentproviders/PlacesSearchSuggestionProvider;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onErrorResponse(Lcom/android/volley/VolleyError;)V
    .registers 4
    .param p1, "error"    # Lcom/android/volley/VolleyError;

    .prologue
    .line 192
    iget-object v0, p0, Lcom/airbnb/android/contentproviders/PlacesSearchSuggestionProvider$1;->this$0:Lcom/airbnb/android/contentproviders/PlacesSearchSuggestionProvider;

    const/4 v1, 0x0

    # setter for: Lcom/airbnb/android/contentproviders/PlacesSearchSuggestionProvider;->mRequestResult:Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/airbnb/android/contentproviders/PlacesSearchSuggestionProvider;->access$002(Lcom/airbnb/android/contentproviders/PlacesSearchSuggestionProvider;Ljava/lang/String;)Ljava/lang/String;

    .line 194
    iget-object v0, p0, Lcom/airbnb/android/contentproviders/PlacesSearchSuggestionProvider$1;->this$0:Lcom/airbnb/android/contentproviders/PlacesSearchSuggestionProvider;

    # getter for: Lcom/airbnb/android/contentproviders/PlacesSearchSuggestionProvider;->mLock:Ljava/lang/Object;
    invoke-static {v0}, Lcom/airbnb/android/contentproviders/PlacesSearchSuggestionProvider;->access$100(Lcom/airbnb/android/contentproviders/PlacesSearchSuggestionProvider;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 195
    :try_start_d
    iget-object v0, p0, Lcom/airbnb/android/contentproviders/PlacesSearchSuggestionProvider$1;->this$0:Lcom/airbnb/android/contentproviders/PlacesSearchSuggestionProvider;

    # getter for: Lcom/airbnb/android/contentproviders/PlacesSearchSuggestionProvider;->mLock:Ljava/lang/Object;
    invoke-static {v0}, Lcom/airbnb/android/contentproviders/PlacesSearchSuggestionProvider;->access$100(Lcom/airbnb/android/contentproviders/PlacesSearchSuggestionProvider;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 196
    monitor-exit v1

    .line 197
    return-void

    .line 196
    :catchall_18
    move-exception v0

    monitor-exit v1
    :try_end_1a
    .catchall {:try_start_d .. :try_end_1a} :catchall_18

    throw v0
.end method

.method public bridge synthetic onResponse(Ljava/lang/Object;)V
    .registers 2
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 179
    check-cast p1, Ljava/lang/String;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/airbnb/android/contentproviders/PlacesSearchSuggestionProvider$1;->onResponse(Ljava/lang/String;)V

    return-void
.end method

.method public onResponse(Ljava/lang/String;)V
    .registers 4
    .param p1, "response"    # Ljava/lang/String;

    .prologue
    .line 183
    iget-object v0, p0, Lcom/airbnb/android/contentproviders/PlacesSearchSuggestionProvider$1;->this$0:Lcom/airbnb/android/contentproviders/PlacesSearchSuggestionProvider;

    # setter for: Lcom/airbnb/android/contentproviders/PlacesSearchSuggestionProvider;->mRequestResult:Ljava/lang/String;
    invoke-static {v0, p1}, Lcom/airbnb/android/contentproviders/PlacesSearchSuggestionProvider;->access$002(Lcom/airbnb/android/contentproviders/PlacesSearchSuggestionProvider;Ljava/lang/String;)Ljava/lang/String;

    .line 185
    iget-object v0, p0, Lcom/airbnb/android/contentproviders/PlacesSearchSuggestionProvider$1;->this$0:Lcom/airbnb/android/contentproviders/PlacesSearchSuggestionProvider;

    # getter for: Lcom/airbnb/android/contentproviders/PlacesSearchSuggestionProvider;->mLock:Ljava/lang/Object;
    invoke-static {v0}, Lcom/airbnb/android/contentproviders/PlacesSearchSuggestionProvider;->access$100(Lcom/airbnb/android/contentproviders/PlacesSearchSuggestionProvider;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 186
    :try_start_c
    iget-object v0, p0, Lcom/airbnb/android/contentproviders/PlacesSearchSuggestionProvider$1;->this$0:Lcom/airbnb/android/contentproviders/PlacesSearchSuggestionProvider;

    # getter for: Lcom/airbnb/android/contentproviders/PlacesSearchSuggestionProvider;->mLock:Ljava/lang/Object;
    invoke-static {v0}, Lcom/airbnb/android/contentproviders/PlacesSearchSuggestionProvider;->access$100(Lcom/airbnb/android/contentproviders/PlacesSearchSuggestionProvider;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 187
    monitor-exit v1

    .line 188
    return-void

    .line 187
    :catchall_17
    move-exception v0

    monitor-exit v1
    :try_end_19
    .catchall {:try_start_c .. :try_end_19} :catchall_17

    throw v0
.end method
