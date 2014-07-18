.class Lcom/airbnb/android/fragments/SearchFragment$7;
.super Ljava/lang/Object;
.source "SearchFragment.java"

# interfaces
.implements Lcom/android/volley/RequestQueue$RequestFilter;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/airbnb/android/fragments/SearchFragment;->launchNewListingLoadingTask()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/airbnb/android/fragments/SearchFragment;


# direct methods
.method constructor <init>(Lcom/airbnb/android/fragments/SearchFragment;)V
    .registers 2

    .prologue
    .line 684
    iput-object p1, p0, Lcom/airbnb/android/fragments/SearchFragment$7;->this$0:Lcom/airbnb/android/fragments/SearchFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public apply(Lcom/android/volley/Request;)Z
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/volley/Request",
            "<*>;)Z"
        }
    .end annotation

    .prologue
    .line 688
    .local p1, "request":Lcom/android/volley/Request;, "Lcom/android/volley/Request<*>;"
    const-string/jumbo v1, "search_request_tag"

    invoke-virtual {p1}, Lcom/android/volley/Request;->getTag()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 689
    .local v0, "cancelling":Z
    return v0
.end method
