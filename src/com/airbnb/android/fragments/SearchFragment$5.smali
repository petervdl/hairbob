.class Lcom/airbnb/android/fragments/SearchFragment$5;
.super Ljava/lang/Object;
.source "SearchFragment.java"

# interfaces
.implements Landroid/widget/SearchView$OnSuggestionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/airbnb/android/fragments/SearchFragment;->setupActionView()V
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
    .line 443
    iput-object p1, p0, Lcom/airbnb/android/fragments/SearchFragment$5;->this$0:Lcom/airbnb/android/fragments/SearchFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSuggestionClick(I)Z
    .registers 6
    .param p1, "position"    # I

    .prologue
    .line 452
    iget-object v2, p0, Lcom/airbnb/android/fragments/SearchFragment$5;->this$0:Lcom/airbnb/android/fragments/SearchFragment;

    # getter for: Lcom/airbnb/android/fragments/SearchFragment;->mSearchAutoCompleteAdapter:Landroid/widget/CursorAdapter;
    invoke-static {v2}, Lcom/airbnb/android/fragments/SearchFragment;->access$800(Lcom/airbnb/android/fragments/SearchFragment;)Landroid/widget/CursorAdapter;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/widget/CursorAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/database/Cursor;

    .line 453
    .local v0, "c":Landroid/database/Cursor;
    const-string/jumbo v2, "suggest_intent_data"

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 454
    .local v1, "query":Ljava/lang/String;
    iget-object v2, p0, Lcom/airbnb/android/fragments/SearchFragment$5;->this$0:Lcom/airbnb/android/fragments/SearchFragment;

    const-string/jumbo v3, "android.intent.action.VIEW"

    # invokes: Lcom/airbnb/android/fragments/SearchFragment;->onLocationSelected(Ljava/lang/String;Ljava/lang/String;)V
    invoke-static {v2, v1, v3}, Lcom/airbnb/android/fragments/SearchFragment;->access$200(Lcom/airbnb/android/fragments/SearchFragment;Ljava/lang/String;Ljava/lang/String;)V

    .line 455
    const/4 v2, 0x1

    return v2
.end method

.method public onSuggestionSelect(I)Z
    .registers 3
    .param p1, "position"    # I

    .prologue
    .line 447
    const/4 v0, 0x0

    return v0
.end method
