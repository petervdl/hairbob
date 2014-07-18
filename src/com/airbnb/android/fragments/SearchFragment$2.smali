.class Lcom/airbnb/android/fragments/SearchFragment$2;
.super Ljava/lang/Object;
.source "SearchFragment.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/airbnb/android/fragments/SearchFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
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
    .line 188
    iput-object p1, p0, Lcom/airbnb/android/fragments/SearchFragment$2;->this$0:Lcom/airbnb/android/fragments/SearchFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .registers 10
    .param p2, "view"    # Landroid/view/View;
    .param p3, "position"    # I
    .param p4, "id"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 192
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    invoke-virtual {p1, p3}, Landroid/widget/AdapterView;->getItemAtPosition(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/database/Cursor;

    .line 195
    .local v0, "cursor":Landroid/database/Cursor;
    iget-object v1, p0, Lcom/airbnb/android/fragments/SearchFragment$2;->this$0:Lcom/airbnb/android/fragments/SearchFragment;

    # getter for: Lcom/airbnb/android/fragments/SearchFragment;->mSearchInfo:Lcom/airbnb/android/models/SearchInfo;
    invoke-static {v1}, Lcom/airbnb/android/fragments/SearchFragment;->access$100(Lcom/airbnb/android/fragments/SearchFragment;)Lcom/airbnb/android/models/SearchInfo;

    move-result-object v1

    iget-object v2, p0, Lcom/airbnb/android/fragments/SearchFragment$2;->this$0:Lcom/airbnb/android/fragments/SearchFragment;

    invoke-virtual {v2}, Lcom/airbnb/android/fragments/SearchFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lcom/airbnb/android/models/SearchInfo;->updateFromCursor(Landroid/database/Cursor;Landroid/content/Context;)V

    .line 196
    iget-object v1, p0, Lcom/airbnb/android/fragments/SearchFragment$2;->this$0:Lcom/airbnb/android/fragments/SearchFragment;

    iget-object v2, p0, Lcom/airbnb/android/fragments/SearchFragment$2;->this$0:Lcom/airbnb/android/fragments/SearchFragment;

    # getter for: Lcom/airbnb/android/fragments/SearchFragment;->mSearchInfo:Lcom/airbnb/android/models/SearchInfo;
    invoke-static {v2}, Lcom/airbnb/android/fragments/SearchFragment;->access$100(Lcom/airbnb/android/fragments/SearchFragment;)Lcom/airbnb/android/models/SearchInfo;

    move-result-object v2

    invoke-virtual {v2}, Lcom/airbnb/android/models/SearchInfo;->getSearchTerm()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "android.intent.action.PICK"

    # invokes: Lcom/airbnb/android/fragments/SearchFragment;->onLocationSelected(Ljava/lang/String;Ljava/lang/String;)V
    invoke-static {v1, v2, v3}, Lcom/airbnb/android/fragments/SearchFragment;->access$200(Lcom/airbnb/android/fragments/SearchFragment;Ljava/lang/String;Ljava/lang/String;)V

    .line 197
    return-void
.end method
