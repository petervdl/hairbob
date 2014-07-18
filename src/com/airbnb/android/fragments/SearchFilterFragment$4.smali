.class Lcom/airbnb/android/fragments/SearchFilterFragment$4;
.super Ljava/lang/Object;
.source "SearchFilterFragment.java"

# interfaces
.implements Lcom/airbnb/android/views/GroupedCounter$OnValueChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/airbnb/android/fragments/SearchFilterFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/airbnb/android/fragments/SearchFilterFragment;


# direct methods
.method constructor <init>(Lcom/airbnb/android/fragments/SearchFilterFragment;)V
    .registers 2

    .prologue
    .line 174
    iput-object p1, p0, Lcom/airbnb/android/fragments/SearchFilterFragment$4;->this$0:Lcom/airbnb/android/fragments/SearchFilterFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onValueChange(Lcom/airbnb/android/views/GroupedCounter;I)V
    .registers 4
    .param p1, "groupedCounter"    # Lcom/airbnb/android/views/GroupedCounter;
    .param p2, "newVal"    # I

    .prologue
    .line 178
    iget-object v0, p0, Lcom/airbnb/android/fragments/SearchFilterFragment$4;->this$0:Lcom/airbnb/android/fragments/SearchFilterFragment;

    # setter for: Lcom/airbnb/android/fragments/SearchFilterFragment;->mNumBeds:I
    invoke-static {v0, p2}, Lcom/airbnb/android/fragments/SearchFilterFragment;->access$602(Lcom/airbnb/android/fragments/SearchFilterFragment;I)I

    .line 179
    return-void
.end method
