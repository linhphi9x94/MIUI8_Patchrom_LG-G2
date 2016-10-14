.class Lcom/android/server/policy/PhoneWindowManager$16;
.super Ljava/lang/Object;
.source "PhoneWindowManager.java"

# interfaces
.implements Lcom/android/server/policy/SystemGesturesPointerEventListener$Callbacks;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/policy/PhoneWindowManager;->init(Landroid/content/Context;Landroid/view/IWindowManager;Landroid/view/WindowManagerPolicy$WindowManagerFuncs;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/policy/PhoneWindowManager;


# direct methods
.method constructor <init>(Lcom/android/server/policy/PhoneWindowManager;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/policy/PhoneWindowManager;

    .prologue
    .line 1737
    iput-object p1, p0, Lcom/android/server/policy/PhoneWindowManager$16;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDebug()V
    .locals 0

    .prologue
    .line 1777
    return-void
.end method

.method public onDown()V
    .locals 1

    .prologue
    .line 1782
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager$16;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    iget-object v0, v0, Lcom/android/server/policy/PhoneWindowManager;->mOrientationListener:Lcom/android/server/policy/PhoneWindowManager$MyOrientationListener;

    invoke-virtual {v0}, Lcom/android/server/policy/PhoneWindowManager$MyOrientationListener;->onTouchStart()V

    .line 1781
    return-void
.end method

.method public onFling(I)V
    .locals 2
    .param p1, "duration"    # I

    .prologue
    .line 1771
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager$16;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    iget-object v0, v0, Lcom/android/server/policy/PhoneWindowManager;->mPowerManagerInternal:Landroid/os/PowerManagerInternal;

    if-eqz v0, :cond_0

    .line 1772
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager$16;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    iget-object v0, v0, Lcom/android/server/policy/PhoneWindowManager;->mPowerManagerInternal:Landroid/os/PowerManagerInternal;

    .line 1773
    const/4 v1, 0x2

    .line 1772
    invoke-virtual {v0, v1, p1}, Landroid/os/PowerManagerInternal;->powerHint(II)V

    .line 1770
    :cond_0
    return-void
.end method

.method public onSwipeFromBottom()V
    .locals 2

    .prologue
    .line 1746
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager$16;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    iget-object v0, v0, Lcom/android/server/policy/PhoneWindowManager;->mNavigationBar:Landroid/view/WindowManagerPolicy$WindowState;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager$16;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    iget-boolean v0, v0, Lcom/android/server/policy/PhoneWindowManager;->mNavigationBarOnBottom:Z

    if-eqz v0, :cond_0

    .line 1747
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager$16;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager$16;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    iget-object v1, v1, Lcom/android/server/policy/PhoneWindowManager;->mNavigationBar:Landroid/view/WindowManagerPolicy$WindowState;

    invoke-static {v0, v1}, Lcom/android/server/policy/PhoneWindowManager;->-wrap14(Lcom/android/server/policy/PhoneWindowManager;Landroid/view/WindowManagerPolicy$WindowState;)V

    .line 1745
    :cond_0
    return-void
.end method

.method public onSwipeFromLeft()V
    .locals 2

    .prologue
    .line 1759
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager$16;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    iget-object v0, v0, Lcom/android/server/policy/PhoneWindowManager;->mNavigationBar:Landroid/view/WindowManagerPolicy$WindowState;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager$16;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    iget-boolean v0, v0, Lcom/android/server/policy/PhoneWindowManager;->mNavigationBarOnBottom:Z

    if-eqz v0, :cond_2

    .line 1763
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager$16;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    invoke-static {v0}, Lcom/android/server/policy/PhoneWindowManager;->-get5(Lcom/android/server/policy/PhoneWindowManager;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager$16;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    invoke-virtual {v0}, Lcom/android/server/policy/PhoneWindowManager;->isKeyguardShowingOrOccluded()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1765
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager$16;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    iget-object v0, v0, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardDelegate:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;

    invoke-virtual {v0}, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;->showKeyguard()V

    .line 1766
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager$16;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/server/policy/PhoneWindowManager;->-set1(Lcom/android/server/policy/PhoneWindowManager;Z)Z

    .line 1758
    :cond_1
    return-void

    .line 1760
    :cond_2
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager$16;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    iget-boolean v0, v0, Lcom/android/server/policy/PhoneWindowManager;->mNavigationBarLeftInLandscape:Z

    .line 1759
    if-eqz v0, :cond_0

    .line 1761
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager$16;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager$16;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    iget-object v1, v1, Lcom/android/server/policy/PhoneWindowManager;->mNavigationBar:Landroid/view/WindowManagerPolicy$WindowState;

    invoke-static {v0, v1}, Lcom/android/server/policy/PhoneWindowManager;->-wrap14(Lcom/android/server/policy/PhoneWindowManager;Landroid/view/WindowManagerPolicy$WindowState;)V

    goto :goto_0
.end method

.method public onSwipeFromRight()V
    .locals 2

    .prologue
    .line 1752
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager$16;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    iget-object v0, v0, Lcom/android/server/policy/PhoneWindowManager;->mNavigationBar:Landroid/view/WindowManagerPolicy$WindowState;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager$16;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    iget-boolean v0, v0, Lcom/android/server/policy/PhoneWindowManager;->mNavigationBarOnBottom:Z

    if-eqz v0, :cond_1

    .line 1751
    :cond_0
    :goto_0
    return-void

    .line 1753
    :cond_1
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager$16;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    iget-boolean v0, v0, Lcom/android/server/policy/PhoneWindowManager;->mNavigationBarLeftInLandscape:Z

    if-nez v0, :cond_0

    .line 1754
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager$16;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager$16;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    iget-object v1, v1, Lcom/android/server/policy/PhoneWindowManager;->mNavigationBar:Landroid/view/WindowManagerPolicy$WindowState;

    invoke-static {v0, v1}, Lcom/android/server/policy/PhoneWindowManager;->-wrap14(Lcom/android/server/policy/PhoneWindowManager;Landroid/view/WindowManagerPolicy$WindowState;)V

    goto :goto_0
.end method

.method public onSwipeFromTop()V
    .locals 2

    .prologue
    .line 1740
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager$16;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    iget-object v0, v0, Lcom/android/server/policy/PhoneWindowManager;->mStatusBar:Landroid/view/WindowManagerPolicy$WindowState;

    if-eqz v0, :cond_0

    .line 1741
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager$16;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager$16;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    iget-object v1, v1, Lcom/android/server/policy/PhoneWindowManager;->mStatusBar:Landroid/view/WindowManagerPolicy$WindowState;

    invoke-static {v0, v1}, Lcom/android/server/policy/PhoneWindowManager;->-wrap14(Lcom/android/server/policy/PhoneWindowManager;Landroid/view/WindowManagerPolicy$WindowState;)V

    .line 1739
    :cond_0
    return-void
.end method

.method public onUpOrCancel()V
    .locals 1

    .prologue
    .line 1786
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager$16;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    iget-object v0, v0, Lcom/android/server/policy/PhoneWindowManager;->mOrientationListener:Lcom/android/server/policy/PhoneWindowManager$MyOrientationListener;

    invoke-virtual {v0}, Lcom/android/server/policy/PhoneWindowManager$MyOrientationListener;->onTouchEnd()V

    .line 1785
    return-void
.end method
