import { render, screen } from '@testing-library/react';
import App from './App';

test('renders learn react link', () => {
  render(<App />);
  const linkElement = screen.queryByText(/検索/i);
  expect(linkElement).toBeInTheDocument();
});
