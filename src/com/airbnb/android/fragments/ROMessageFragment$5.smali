.class Lcom/airbnb/android/fragments/ROMessageFragment$5;
.super Ljava/lang/Object;
.source "ROMessageFragment.java"

# interfaces
.implements Lcom/airbnb/android/requests/RequestListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/airbnb/android/fragments/ROMessageFragment;->sendMessage(Ljava/lang/String;)V
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
        "Lcom/airbnb/android/requests/UpdateMessageThreadRequest;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/airbnb/android/fragments/ROMessageFragment;

.field final synthetic val$message:Ljava/lang/String;

.field final synthetic val$newMessage:Lcom/airbnb/android/models/Post;


# direct methods
.method constructor <init>(Lcom/airbnb/android/fragments/ROMessageFragment;Lcom/airbnb/android/models/Post;Ljava/lang/String;)V
    .registers 4

    .prologue
    .line 353
    iput-object p1, p0, Lcom/airbnb/android/fragments/ROMessageFragment$5;->this$0:Lcom/airbnb/android/fragments/ROMessageFragment;

    iput-object p2, p0, Lcom/airbnb/android/fragments/ROMessageFragment$5;->val$newMessage:Lcom/airbnb/android/models/Post;

    iput-object p3, p0, Lcom/airbnb/android/fragments/ROMessageFragment$5;->val$message:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onErrorResponse(Lcom/android/volley/VolleyError;)V
    .registers 4
    .param p1, "error"    # Lcom/android/volley/VolleyError;

    .prologue
    .line 369
    iget-object v0, p0, Lcom/airbnb/android/fragments/ROMessageFragment$5;->this$0:Lcom/airbnb/android/fragments/ROMessageFragment;

    invoke-virtual {v0}, Lcom/airbnb/android/fragments/ROMessageFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/airbnb/android/requests/AirbnbRequest;->toastGenericVolleyError(Landroid/content/Context;)V

    .line 370
    iget-object v0, p0, Lcom/airbnb/android/fragments/ROMessageFragment$5;->this$0:Lcom/airbnb/android/fragments/ROMessageFragment;

    # getter for: Lcom/airbnb/android/fragments/ROMessageFragment;->mMessageAdapter:Lcom/airbnb/android/adapters/ROMessageAdapter;
    invoke-static {v0}, Lcom/airbnb/android/fragments/ROMessageFragment;->access$200(Lcom/airbnb/android/fragments/ROMessageFragment;)Lcom/airbnb/android/adapters/ROMessageAdapter;

    move-result-object v0

    iget-object v1, p0, Lcom/airbnb/android/fragments/ROMessageFragment$5;->val$newMessage:Lcom/airbnb/android/models/Post;

    invoke-virtual {v0, v1}, Lcom/airbnb/android/adapters/ROMessageAdapter;->remove(Ljava/lang/Object;)V

    .line 371
    iget-object v0, p0, Lcom/airbnb/android/fragments/ROMessageFragment$5;->this$0:Lcom/airbnb/android/fragments/ROMessageFragment;

    # getter for: Lcom/airbnb/android/fragments/ROMessageFragment;->mMessageAdapter:Lcom/airbnb/android/adapters/ROMessageAdapter;
    invoke-static {v0}, Lcom/airbnb/android/fragments/ROMessageFragment;->access$200(Lcom/airbnb/android/fragments/ROMessageFragment;)Lcom/airbnb/android/adapters/ROMessageAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/airbnb/android/adapters/ROMessageAdapter;->notifyDataSetChanged()V

    .line 374
    iget-object v0, p0, Lcom/airbnb/android/fragments/ROMessageFragment$5;->this$0:Lcom/airbnb/android/fragments/ROMessageFragment;

    iget-object v0, v0, Lcom/airbnb/android/fragments/ROMessageFragment;->mInputEditText:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/airbnb/android/fragments/ROMessageFragment$5;->val$message:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 375
    return-void
.end method

.method public onResponse(Lcom/airbnb/android/requests/UpdateMessageThreadRequest;)V
    .registers 4
    .param p1, "response"    # Lcom/airbnb/android/requests/UpdateMessageThreadRequest;

    .prologue
    .line 357
    invoke-virtual {p1}, Lcom/airbnb/android/requests/UpdateMessageThreadRequest;->isSuccess()Z

    move-result v0

    if-nez v0, :cond_b

    .line 358
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/airbnb/android/fragments/ROMessageFragment$5;->onErrorResponse(Lcom/android/volley/VolleyError;)V

    .line 365
    :goto_a
    return-void

    .line 360
    :cond_b
    iget-object v0, p0, Lcom/airbnb/android/fragments/ROMessageFragment$5;->val$newMessage:Lcom/airbnb/android/models/Post;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/airbnb/android/models/Post;->setIsBeingSent(Z)V

    .line 362
    iget-object v0, p0, Lcom/airbnb/android/fragments/ROMessageFragment$5;->this$0:Lcom/airbnb/android/fragments/ROMessageFragment;

    # getter for: Lcom/airbnb/android/fragments/ROMessageFragment;->mROFragmentInterface:Lcom/airbnb/android/interfaces/ROFragmentInterface;
    invoke-static {v0}, Lcom/airbnb/android/fragments/ROMessageFragment;->access$000(Lcom/airbnb/android/fragments/ROMessageFragment;)Lcom/airbnb/android/interfaces/ROFragmentInterface;

    move-result-object v0

    invoke-interface {v0}, Lcom/airbnb/android/interfaces/ROFragmentInterface;->getMessageThread()Lcom/airbnb/android/models/MessageThread;

    move-result-object v0

    iget-object v1, p0, Lcom/airbnb/android/fragments/ROMessageFragment$5;->val$newMessage:Lcom/airbnb/android/models/Post;

    invoke-virtual {v0, v1}, Lcom/airbnb/android/models/MessageThread;->addNewPost(Lcom/airbnb/android/models/Post;)V

    .line 363
    iget-object v0, p0, Lcom/airbnb/android/fragments/ROMessageFragment$5;->this$0:Lcom/airbnb/android/fragments/ROMessageFragment;

    # getter for: Lcom/airbnb/android/fragments/ROMessageFragment;->mMessageAdapter:Lcom/airbnb/android/adapters/ROMessageAdapter;
    invoke-static {v0}, Lcom/airbnb/android/fragments/ROMessageFragment;->access$200(Lcom/airbnb/android/fragments/ROMessageFragment;)Lcom/airbnb/android/adapters/ROMessageAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/airbnb/android/adapters/ROMessageAdapter;->notifyDataSetChanged()V

    goto :goto_a
.end method

.method public bridge synthetic onResponse(Ljava/lang/Object;)V
    .registers 2
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 353
    check-cast p1, Lcom/airbnb/android/requests/UpdateMessageThreadRequest;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/airbnb/android/fragments/ROMessageFragment$5;->onResponse(Lcom/airbnb/android/requests/UpdateMessageThreadRequest;)V

    return-void
.end method
