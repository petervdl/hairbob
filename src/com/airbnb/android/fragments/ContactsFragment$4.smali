.class Lcom/airbnb/android/fragments/ContactsFragment$4;
.super Ljava/lang/Object;
.source "ContactsFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/airbnb/android/fragments/ContactsFragment;->onLoadFinished(Landroid/support/v4/content/Loader;Landroid/database/Cursor;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/airbnb/android/fragments/ContactsFragment;

.field final synthetic val$groupPosition:I


# direct methods
.method constructor <init>(Lcom/airbnb/android/fragments/ContactsFragment;I)V
    .registers 3

    .prologue
    .line 442
    iput-object p1, p0, Lcom/airbnb/android/fragments/ContactsFragment$4;->this$0:Lcom/airbnb/android/fragments/ContactsFragment;

    iput p2, p0, Lcom/airbnb/android/fragments/ContactsFragment$4;->val$groupPosition:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 4
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 445
    iget-object v0, p0, Lcom/airbnb/android/fragments/ContactsFragment$4;->this$0:Lcom/airbnb/android/fragments/ContactsFragment;

    iget v1, p0, Lcom/airbnb/android/fragments/ContactsFragment$4;->val$groupPosition:I

    # invokes: Lcom/airbnb/android/fragments/ContactsFragment;->handleRecommendedGroupClick(Landroid/view/View;I)Z
    invoke-static {v0, p1, v1}, Lcom/airbnb/android/fragments/ContactsFragment;->access$300(Lcom/airbnb/android/fragments/ContactsFragment;Landroid/view/View;I)Z

    .line 446
    return-void
.end method
