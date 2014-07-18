.class Lcom/airbnb/android/fragments/groups/NewContentFragment$1;
.super Ljava/lang/Object;
.source "NewContentFragment.java"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/airbnb/android/fragments/groups/NewContentFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/airbnb/android/fragments/groups/NewContentFragment;


# direct methods
.method constructor <init>(Lcom/airbnb/android/fragments/groups/NewContentFragment;)V
    .registers 2

    .prologue
    .line 219
    iput-object p1, p0, Lcom/airbnb/android/fragments/groups/NewContentFragment$1;->this$0:Lcom/airbnb/android/fragments/groups/NewContentFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .registers 6
    .param p1, "s"    # Landroid/text/Editable;

    .prologue
    .line 235
    invoke-interface {p1}, Landroid/text/Editable;->length()I

    move-result v1

    .local v1, "i":I
    :goto_4
    if-lez v1, :cond_2d

    .line 236
    add-int/lit8 v2, v1, -0x1

    invoke-interface {p1, v2, v1}, Landroid/text/Editable;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    .line 237
    .local v0, "chr":Ljava/lang/String;
    const-string/jumbo v2, "\n"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_22

    const-string/jumbo v2, "\r"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2a

    .line 238
    :cond_22
    add-int/lit8 v2, v1, -0x1

    const-string/jumbo v3, ""

    invoke-interface {p1, v2, v1, v3}, Landroid/text/Editable;->replace(IILjava/lang/CharSequence;)Landroid/text/Editable;

    .line 235
    :cond_2a
    add-int/lit8 v1, v1, -0x1

    goto :goto_4

    .line 241
    .end local v0    # "chr":Ljava/lang/String;
    :cond_2d
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .registers 7
    .param p1, "s"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "count"    # I
    .param p4, "after"    # I

    .prologue
    .line 228
    iget-object v0, p0, Lcom/airbnb/android/fragments/groups/NewContentFragment$1;->this$0:Lcom/airbnb/android/fragments/groups/NewContentFragment;

    # getter for: Lcom/airbnb/android/fragments/groups/NewContentFragment;->mTitle:Landroid/widget/EditText;
    invoke-static {v0}, Lcom/airbnb/android/fragments/groups/NewContentFragment;->access$000(Lcom/airbnb/android/fragments/groups/NewContentFragment;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->length()I

    move-result v0

    if-nez v0, :cond_1c

    .line 229
    const-string/jumbo v0, "title_start_typing"

    iget-object v1, p0, Lcom/airbnb/android/fragments/groups/NewContentFragment$1;->this$0:Lcom/airbnb/android/fragments/groups/NewContentFragment;

    # getter for: Lcom/airbnb/android/fragments/groups/NewContentFragment;->mGroup:Lcom/airbnb/android/models/groups/Group;
    invoke-static {v1}, Lcom/airbnb/android/fragments/groups/NewContentFragment;->access$100(Lcom/airbnb/android/fragments/groups/NewContentFragment;)Lcom/airbnb/android/models/groups/Group;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/airbnb/android/analytics/GroupsAnalytics;->trackNewPost(Ljava/lang/String;Lcom/airbnb/android/models/groups/Group;)V

    .line 231
    :cond_1c
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .registers 5
    .param p1, "s"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "before"    # I
    .param p4, "count"    # I

    .prologue
    .line 224
    return-void
.end method
