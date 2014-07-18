.class Lcom/airbnb/android/fragments/ROContainerFragment$3;
.super Ljava/lang/Object;
.source "ROContainerFragment.java"

# interfaces
.implements Lcom/airbnb/android/views/ROTabBar$ROTabListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/airbnb/android/fragments/ROContainerFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/airbnb/android/fragments/ROContainerFragment;


# direct methods
.method constructor <init>(Lcom/airbnb/android/fragments/ROContainerFragment;)V
    .registers 2

    .prologue
    .line 360
    iput-object p1, p0, Lcom/airbnb/android/fragments/ROContainerFragment$3;->this$0:Lcom/airbnb/android/fragments/ROContainerFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public switchToTab(I)V
    .registers 3
    .param p1, "tabIndex"    # I

    .prologue
    .line 364
    iget-object v0, p0, Lcom/airbnb/android/fragments/ROContainerFragment$3;->this$0:Lcom/airbnb/android/fragments/ROContainerFragment;

    # invokes: Lcom/airbnb/android/fragments/ROContainerFragment;->selectTabImpl(I)V
    invoke-static {v0, p1}, Lcom/airbnb/android/fragments/ROContainerFragment;->access$600(Lcom/airbnb/android/fragments/ROContainerFragment;I)V

    .line 365
    iget-object v0, p0, Lcom/airbnb/android/fragments/ROContainerFragment$3;->this$0:Lcom/airbnb/android/fragments/ROContainerFragment;

    # invokes: Lcom/airbnb/android/fragments/ROContainerFragment;->showTabContentFor(I)V
    invoke-static {v0, p1}, Lcom/airbnb/android/fragments/ROContainerFragment;->access$700(Lcom/airbnb/android/fragments/ROContainerFragment;I)V

    .line 366
    return-void
.end method
