<<<<<<< HEAD
import { CommonModule } from '@angular/common';
import { Component } from '@angular/core';
import { AuthService } from '../../services/auth-service.service';

@Component({
  selector: 'app-aside',
  imports: [CommonModule],
=======
import { Component } from '@angular/core';
import { AuthService } from '../../services/auth-service.service';
import { CommonModule } from '@angular/common';
import { RouterLink } from '@angular/router';

@Component({
  selector: 'app-aside',
  imports: [RouterLink, CommonModule],
>>>>>>> 3854c00292736ee617b3daa90044772ec186972f
  templateUrl: './aside.component.html',
  styleUrl: './aside.component.css'
})
export class AsideComponent {
<<<<<<< HEAD
  constructor(public authService: AuthService  ) {}
=======
  constructor(public authService: AuthService) {}

  toggleCollapse(event: MouseEvent): void {
    // Prevent the default anchor behavior
    event.preventDefault();

    if (this.authService.roleMatch(['ADMIN'])) {
      // If the user has ADMIN role, toggle the collapse
      const subMenu = document.getElementById('userinfo');
      if (subMenu) {
        subMenu.classList.toggle('collapse');
      }
    } else {
      // If not, alert the user about the permission issue
      alert("You don't have permission to access this section.");
    }
  }
>>>>>>> 3854c00292736ee617b3daa90044772ec186972f
}
