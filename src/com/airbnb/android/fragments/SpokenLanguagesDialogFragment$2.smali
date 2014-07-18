.class Lcom/airbnb/android/fragments/SpokenLanguagesDialogFragment$2;
.super Ljava/lang/Object;
.source "SpokenLanguagesDialogFragment.java"

# interfaces
.implements Lcom/airbnb/android/requests/RequestListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/airbnb/android/fragments/SpokenLanguagesDialogFragment;->fetchSpokenLanguages()V
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
        "Lcom/airbnb/android/requests/GetSpokenLanguagesRequest;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/airbnb/android/fragments/SpokenLanguagesDialogFragment;


# direct methods
.method constructor <init>(Lcom/airbnb/android/fragments/SpokenLanguagesDialogFragment;)V
    .registers 2

    .prologue
    .line 106
    iput-object p1, p0, Lcom/airbnb/android/fragments/SpokenLanguagesDialogFragment$2;->this$0:Lcom/airbnb/android/fragments/SpokenLanguagesDialogFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onErrorResponse(Lcom/android/volley/VolleyError;)V
    .registers 9
    .param p1, "error"    # Lcom/android/volley/VolleyError;

    .prologue
    const/4 v6, 0x0

    .line 118
    iget-object v0, p0, Lcom/airbnb/android/fragments/SpokenLanguagesDialogFragment$2;->this$0:Lcom/airbnb/android/fragments/SpokenLanguagesDialogFragment;

    iget-object v0, v0, Lcom/airbnb/android/fragments/SpokenLanguagesDialogFragment;->mLoaderListView:Lcom/airbnb/android/views/LoaderListView;

    invoke-virtual {v0}, Lcom/airbnb/android/views/LoaderListView;->finishLoader()V

    .line 119
    iget-object v0, p0, Lcom/airbnb/android/fragments/SpokenLanguagesDialogFragment$2;->this$0:Lcom/airbnb/android/fragments/SpokenLanguagesDialogFragment;

    invoke-virtual {v0}, Lcom/airbnb/android/fragments/SpokenLanguagesDialogFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/airbnb/android/fragments/SpokenLanguagesDialogFragment$2;->this$0:Lcom/airbnb/android/fragments/SpokenLanguagesDialogFragment;

    const v2, 0x7f0e0183

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/airbnb/android/fragments/SpokenLanguagesDialogFragment$2;->this$0:Lcom/airbnb/android/fragments/SpokenLanguagesDialogFragment;

    sget-object v5, Lcom/airbnb/android/interfaces/EditProfileInterface$ProfileSection;->Languages:Lcom/airbnb/android/interfaces/EditProfileInterface$ProfileSection;

    invoke-virtual {v5}, Lcom/airbnb/android/interfaces/EditProfileInterface$ProfileSection;->getTitleId()I

    move-result v5

    invoke-virtual {v4, v5}, Lcom/airbnb/android/fragments/SpokenLanguagesDialogFragment;->getString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v6

    invoke-virtual {v1, v2, v3}, Lcom/airbnb/android/fragments/SpokenLanguagesDialogFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 120
    iget-object v0, p0, Lcom/airbnb/android/fragments/SpokenLanguagesDialogFragment$2;->this$0:Lcom/airbnb/android/fragments/SpokenLanguagesDialogFragment;

    invoke-virtual {v0}, Lcom/airbnb/android/fragments/SpokenLanguagesDialogFragment;->dismiss()V

    .line 121
    return-void
.end method

.method public onResponse(Lcom/airbnb/android/requests/GetSpokenLanguagesRequest;)V
    .registers 4
    .param p1, "response"    # Lcom/airbnb/android/requests/GetSpokenLanguagesRequest;

    .prologue
    .line 110
    iget-object v0, p0, Lcom/airbnb/android/fragments/SpokenLanguagesDialogFragment$2;->this$0:Lcom/airbnb/android/fragments/SpokenLanguagesDialogFragment;

    invoke-virtual {v0}, Lcom/airbnb/android/fragments/SpokenLanguagesDialogFragment;->isResumed()Z

    move-result v0

    if-eqz v0, :cond_16

    .line 111
    iget-object v0, p0, Lcom/airbnb/android/fragments/SpokenLanguagesDialogFragment$2;->this$0:Lcom/airbnb/android/fragments/SpokenLanguagesDialogFragment;

    iget-object v0, v0, Lcom/airbnb/android/fragments/SpokenLanguagesDialogFragment;->mLoaderListView:Lcom/airbnb/android/views/LoaderListView;

    invoke-virtual {v0}, Lcom/airbnb/android/views/LoaderListView;->finishLoader()V

    .line 112
    iget-object v0, p0, Lcom/airbnb/android/fragments/SpokenLanguagesDialogFragment$2;->this$0:Lcom/airbnb/android/fragments/SpokenLanguagesDialogFragment;

    iget-object v1, p1, Lcom/airbnb/android/requests/GetSpokenLanguagesRequest;->languages:Ljava/util/ArrayList;

    # invokes: Lcom/airbnb/android/fragments/SpokenLanguagesDialogFragment;->populateLanguages(Ljava/util/ArrayList;)V
    invoke-static {v0, v1}, Lcom/airbnb/android/fragments/SpokenLanguagesDialogFragment;->access$100(Lcom/airbnb/android/fragments/SpokenLanguagesDialogFragment;Ljava/util/ArrayList;)V

    .line 114
    :cond_16
    return-void
.end method

.method public bridge synthetic onResponse(Ljava/lang/Object;)V
    .registers 2
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 106
    check-cast p1, Lcom/airbnb/android/requests/GetSpokenLanguagesRequest;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/airbnb/android/fragments/SpokenLanguagesDialogFragment$2;->onResponse(Lcom/airbnb/android/requests/GetSpokenLanguagesRequest;)V

    return-void
.end method
