.class Lcom/airbnb/android/views/ROTabBar$3;
.super Ljava/lang/Object;
.source "ROTabBar.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/airbnb/android/views/ROTabBar;->setupROTabBarAndButtons()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/airbnb/android/views/ROTabBar;


# direct methods
.method constructor <init>(Lcom/airbnb/android/views/ROTabBar;)V
    .registers 2

    .prologue
    .line 114
    iput-object p1, p0, Lcom/airbnb/android/views/ROTabBar$3;->this$0:Lcom/airbnb/android/views/ROTabBar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 5
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 117
    iget-object v0, p0, Lcom/airbnb/android/views/ROTabBar$3;->this$0:Lcom/airbnb/android/views/ROTabBar;

    # invokes: Lcom/airbnb/android/views/ROTabBar;->canSwitchTab()Z
    invoke-static {v0}, Lcom/airbnb/android/views/ROTabBar;->access$000(Lcom/airbnb/android/views/ROTabBar;)Z

    move-result v0

    if-eqz v0, :cond_21

    .line 118
    iget-object v0, p0, Lcom/airbnb/android/views/ROTabBar$3;->this$0:Lcom/airbnb/android/views/ROTabBar;

    # getter for: Lcom/airbnb/android/views/ROTabBar;->mTabListener:Lcom/airbnb/android/views/ROTabBar$ROTabListener;
    invoke-static {v0}, Lcom/airbnb/android/views/ROTabBar;->access$200(Lcom/airbnb/android/views/ROTabBar;)Lcom/airbnb/android/views/ROTabBar$ROTabListener;

    move-result-object v0

    sget-object v1, Lcom/airbnb/android/adapters/ROPagerAdapter$ROSection;->Message:Lcom/airbnb/android/adapters/ROPagerAdapter$ROSection;

    iget-object v2, p0, Lcom/airbnb/android/views/ROTabBar$3;->this$0:Lcom/airbnb/android/views/ROTabBar;

    # getter for: Lcom/airbnb/android/views/ROTabBar;->mROPagerAdapter:Lcom/airbnb/android/adapters/ROPagerAdapter;
    invoke-static {v2}, Lcom/airbnb/android/views/ROTabBar;->access$100(Lcom/airbnb/android/views/ROTabBar;)Lcom/airbnb/android/adapters/ROPagerAdapter;

    move-result-object v2

    invoke-virtual {v2}, Lcom/airbnb/android/adapters/ROPagerAdapter;->hasItinerary()Z

    move-result v2

    invoke-virtual {v1, v2}, Lcom/airbnb/android/adapters/ROPagerAdapter$ROSection;->getIndex(Z)I

    move-result v1

    invoke-interface {v0, v1}, Lcom/airbnb/android/views/ROTabBar$ROTabListener;->switchToTab(I)V

    .line 120
    :cond_21
    return-void
.end method
