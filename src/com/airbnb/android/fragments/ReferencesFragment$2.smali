.class Lcom/airbnb/android/fragments/ReferencesFragment$2;
.super Ljava/lang/Object;
.source "ReferencesFragment.java"

# interfaces
.implements Lcom/airbnb/android/utils/InfiniteAdapter$AdapterRequestListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/airbnb/android/fragments/ReferencesFragment;->setAdapter()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/airbnb/android/utils/InfiniteAdapter$AdapterRequestListener",
        "<",
        "Lcom/airbnb/android/requests/ReferencesRequest;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/airbnb/android/fragments/ReferencesFragment;


# direct methods
.method constructor <init>(Lcom/airbnb/android/fragments/ReferencesFragment;)V
    .registers 2

    .prologue
    .line 76
    iput-object p1, p0, Lcom/airbnb/android/fragments/ReferencesFragment$2;->this$0:Lcom/airbnb/android/fragments/ReferencesFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onErrorResponse(Lcom/android/volley/VolleyError;)V
    .registers 3
    .param p1, "error"    # Lcom/android/volley/VolleyError;

    .prologue
    .line 86
    iget-object v0, p0, Lcom/airbnb/android/fragments/ReferencesFragment$2;->this$0:Lcom/airbnb/android/fragments/ReferencesFragment;

    # getter for: Lcom/airbnb/android/fragments/ReferencesFragment;->mLoaderListView:Lcom/airbnb/android/views/LoaderListView;
    invoke-static {v0}, Lcom/airbnb/android/fragments/ReferencesFragment;->access$100(Lcom/airbnb/android/fragments/ReferencesFragment;)Lcom/airbnb/android/views/LoaderListView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/airbnb/android/views/LoaderListView;->finishLoaderImmediate()V

    .line 87
    iget-object v0, p0, Lcom/airbnb/android/fragments/ReferencesFragment$2;->this$0:Lcom/airbnb/android/fragments/ReferencesFragment;

    invoke-virtual {v0}, Lcom/airbnb/android/fragments/ReferencesFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/airbnb/android/requests/AirbnbRequest;->toastGenericVolleyError(Landroid/content/Context;)V

    .line 88
    return-void
.end method

.method public onResponse(Lcom/airbnb/android/requests/ReferencesRequest;)V
    .registers 3
    .param p1, "response"    # Lcom/airbnb/android/requests/ReferencesRequest;

    .prologue
    .line 80
    iget-object v0, p0, Lcom/airbnb/android/fragments/ReferencesFragment$2;->this$0:Lcom/airbnb/android/fragments/ReferencesFragment;

    # getter for: Lcom/airbnb/android/fragments/ReferencesFragment;->mLoaderListView:Lcom/airbnb/android/views/LoaderListView;
    invoke-static {v0}, Lcom/airbnb/android/fragments/ReferencesFragment;->access$100(Lcom/airbnb/android/fragments/ReferencesFragment;)Lcom/airbnb/android/views/LoaderListView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/airbnb/android/views/LoaderListView;->finishLoader()V

    .line 82
    return-void
.end method

.method public bridge synthetic onResponse(Ljava/lang/Object;)V
    .registers 2
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 76
    check-cast p1, Lcom/airbnb/android/requests/ReferencesRequest;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/airbnb/android/fragments/ReferencesFragment$2;->onResponse(Lcom/airbnb/android/requests/ReferencesRequest;)V

    return-void
.end method
